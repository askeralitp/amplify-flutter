// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cognito_confirm_sign_in_options.g.dart';

/// {@template amplify_auth_cognito.model.cognito_confirm_sign_in_options}
/// Cognito options for `Amplify.Auth.confirmSignIn`.
/// {@endtemplate}
@zAmplifySerializable
class CognitoConfirmSignInOptions extends ConfirmSignInOptions
    with AWSEquatable<CognitoConfirmSignInOptions>, AWSDebuggable {
  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_in_options}
  const CognitoConfirmSignInOptions({
    this.clientMetadata,
    this.userAttributes,
  });

  /// {@macro amplify_auth_cognito.model.cognito_confirm_sign_in_options}
  factory CognitoConfirmSignInOptions.fromJson(Map<String, Object?> json) =>
      _$CognitoConfirmSignInOptionsFromJson(json);

  /// A map of custom key-value pairs that you can provide as input for certain
  /// custom workflows that this action triggers.
  final Map<String, String>? clientMetadata;

  /// User attributes which were marked as required and have not been previously
  /// provided.
  @JsonKey(
    fromJson: _userAttributesFromJson,
    toJson: _userAttributesToJson,
  )
  final Map<CognitoUserAttributeKey, String>? userAttributes;

  @override
  List<Object?> get props => [clientMetadata, userAttributes];

  @override
  String get runtimeTypeName => 'CognitoConfirmSignInOptions';

  @override
  Map<String, Object?> toJson() => _$CognitoConfirmSignInOptionsToJson(this);
}

Map<CognitoUserAttributeKey, String>? _userAttributesFromJson(Object? json) {
  if (json is! Map) {
    return null;
  }
  return json.cast<String, String>().map(
        (k, v) => MapEntry(CognitoUserAttributeKey.parse(k), v),
      );
}

Map<String, String>? _userAttributesToJson(
  Map<CognitoUserAttributeKey, String>? userAttributes,
) {
  return userAttributes?.map((k, v) => MapEntry(k.key, v));
}