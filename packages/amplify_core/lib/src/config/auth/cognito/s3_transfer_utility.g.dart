// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 's3_transfer_utility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3TransferUtility _$S3TransferUtilityFromJson(Map<String, dynamic> json) =>
    S3TransferUtility(
      bucket: json['Bucket'] as String,
      region: json['Region'] as String,
    );

Map<String, dynamic> _$S3TransferUtilityToJson(S3TransferUtility instance) =>
    <String, dynamic>{
      'Bucket': instance.bucket,
      'Region': instance.region,
    };
