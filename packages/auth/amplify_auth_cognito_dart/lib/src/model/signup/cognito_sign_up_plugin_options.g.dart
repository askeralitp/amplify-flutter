// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_up_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignUpPluginOptions _$CognitoSignUpPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignUpPluginOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      validationData: (json['validationData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoSignUpPluginOptionsToJson(
        CognitoSignUpPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
      'validationData': instance.validationData,
    };
