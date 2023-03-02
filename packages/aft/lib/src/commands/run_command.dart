// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/models/script_template.dart';
import 'package:aft/src/options/fail_fast_option.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:collection/collection.dart';

/// Command to list all Dart/Flutter packages in the repo.
class RunCommand extends AmplifyCommand with GlobOptions, FailFastOption {
  @override
  String get description => 'Runs a pre-defined script from the configuration';

  @override
  String get name => 'run';

  /// Prints the available scripts and their descriptions before exiting.
  Never _availableScripts(String error) {
    final scripts = StringBuffer('''
$error

------------------

Available scripts:

''');
    for (final script in aftConfig.scripts.entries) {
      final scriptName = script.key;
      final description = script.value.description;
      scripts.write(scriptName);
      if (description != null && description.isNotEmpty) {
        scripts.write(': $description');
      }
      scripts.writeln();
    }
    exitError(scripts);
  }

  @override
  Future<void> run() async {
    await super.run();
    final aftConfig = this.aftConfig;
    final scriptName = argResults!.arguments.firstOrNull;
    if (scriptName == null) {
      _availableScripts(usage);
    }
    final script = aftConfig.scripts[scriptName];
    if (script == null) {
      _availableScripts('No script registered for "$scriptName".');
    }
    final failFast = this.failFast || script.failFast;
    final arguments = argResults!.rest.sublist(1);
    final templater = ScriptTemplater(script.run);
    final tempDir = Directory.systemTemp.createTempSync('aft_run_');
    final commandPaths = PackageSelector.and([
      script.from,
      commandPackageSelector,
    ]).allPaths(aftConfig);
    logger.verbose(
      '''
Executing script:

---
${script.run}
---

with arguments: $arguments
for package paths:
${commandPaths.map((path) => '- $path').join('\n')}
''',
    );
    try {
      for (final commandPath in commandPaths) {
        final package = aftConfig.allPackages.values.firstWhereOrNull(
          (package) => package.path == commandPath,
        );
        final renderedScript = templater.render({
          'package': package?.toJson(),
        }).trim();
        final fullScript = '''
#/bin/sh
set -euo pipefail

$renderedScript
'''
            .trim();
        final tempFile = File.fromUri(tempDir.uri.resolve('script.sh'))
          ..createSync()
          ..writeAsStringSync(fullScript);
        logger.info('Running $scriptName script in: $commandPath');
        final result = await execCommand(
          ['sh', tempFile.path, ...arguments],
          workingDirectory: commandPath,
        );
        if (result.exitCode != 0 && failFast) {
          throw ProcessException(
            'sh ${tempFile.path}',
            arguments,
            '`$scriptName` failed for package: $commandPath',
            result.exitCode,
          );
        }
      }
    } finally {
      tempDir.deleteSync(recursive: true);
    }
  }
}
