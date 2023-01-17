// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'config.dart';
import 'utils/mock_data.dart';
import 'utils/test_utils.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
  binding.deferFirstFrame();

  final isMobile = !kIsWeb && (Platform.isIOS || Platform.isAndroid);

  final authenticator = Authenticator(
    child: MaterialApp(
      builder: Authenticator.builder(),
      home: const Scaffold(
        body: Center(
          child: SignOutButton(),
        ),
      ),
    ),
  );

  group(
    'confirm-sign-up',
    () {
      // Given I'm running the example with an "Email or Phone" config
      setUpAll(() async {
        await loadConfiguration(
          'email-or-phone',
          additionalConfigs: isMobile ? [AmplifyAPI()] : null,
        );
      });

      setUp(signOut);

      tearDown(Amplify.Auth.deleteUser);

      // Scenario: Sign up & confirm account with email as username
      testWidgets(
        'Sign up & confirm account with email as username',
        (tester) async {
          final signUpPage = SignUpPage(tester: tester);
          final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
          final signInPage = SignInPage(tester: tester);

          await loadAuthenticator(tester: tester, authenticator: authenticator);

          final email = generateEmail();
          final phoneNumber = generateUSPhoneNumber();
          final password = generatePassword();

          final otpResult = await getOtpCode(email);

          await signInPage.navigateToSignUp();

          // When I select email as a username
          await signUpPage.selectEmail();

          // And I type my email address as a username
          await signUpPage.enterUsername(email);

          // And I type my password
          await signUpPage.enterPassword(password);

          // And I confirm my password
          await signUpPage.enterPasswordConfirmation(password);

          // And I enter my phone number
          await signUpPage.enterPhoneNumber(phoneNumber.withOutCountryCode());

          // And I click the "Create Account" button
          await signUpPage.submitSignUp();

          // And I see "Confirmation Code"
          confirmSignUpPage.expectConfirmationCodeIsPresent();

          // And I type a valid confirmation code
          await confirmSignUpPage.enterCode(await otpResult.code);

          // And I click the "Confirm" button
          await confirmSignUpPage.submitConfirmSignUp();

          // Then I see "Sign out"
          await signInPage.expectAuthenticated();
        },
      );

      testWidgets(
        'Sign up & confirm account with phone number as username',
        (tester) async {
          final signUpPage = SignUpPage(tester: tester);
          final confirmSignUpPage = ConfirmSignUpPage(tester: tester);
          final signInPage = SignInPage(tester: tester);

          await loadAuthenticator(tester: tester, authenticator: authenticator);

          final email = generateEmail();
          final phoneNumber = generateUSPhoneNumber();
          final password = generatePassword();

          final otpResult = await getOtpCode(email);

          await signInPage.navigateToSignUp();

          // When I select phone number as a username
          await signUpPage.selectPhone();

          // And I type my phone number as a username
          await signUpPage.enterUsername(phoneNumber.withOutCountryCode());

          // And I type my password
          await signUpPage.enterPassword(password);

          // And I confirm my password
          await signUpPage.enterPasswordConfirmation(password);

          // And I enter my email address
          await signUpPage.enterEmail(email);

          // And I click the "Create Account" button
          await signUpPage.submitSignUp();

          // And I see "Confirmation Code"
          confirmSignUpPage.expectConfirmationCodeIsPresent();

          // And I type a valid confirmation code
          await confirmSignUpPage.enterCode(await otpResult.code);

          // And I click the "Confirm" button
          await confirmSignUpPage.submitConfirmSignUp();

          // Then I see "Sign out"
          await signInPage.expectAuthenticated();
        },
      );
    },
    skip: !isMobile,
  );
}