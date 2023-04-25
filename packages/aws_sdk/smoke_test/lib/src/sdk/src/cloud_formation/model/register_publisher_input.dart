// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.register_publisher_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'register_publisher_input.g.dart';

abstract class RegisterPublisherInput
    with
        _i1.HttpInput<RegisterPublisherInput>,
        _i2.AWSEquatable<RegisterPublisherInput>
    implements Built<RegisterPublisherInput, RegisterPublisherInputBuilder> {
  factory RegisterPublisherInput({
    bool? acceptTermsAndConditions,
    String? connectionArn,
  }) {
    return _$RegisterPublisherInput._(
      acceptTermsAndConditions: acceptTermsAndConditions,
      connectionArn: connectionArn,
    );
  }

  factory RegisterPublisherInput.build(
          [void Function(RegisterPublisherInputBuilder) updates]) =
      _$RegisterPublisherInput;

  const RegisterPublisherInput._();

  factory RegisterPublisherInput.fromRequest(
    RegisterPublisherInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RegisterPublisherInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegisterPublisherInputBuilder b) {}

  /// Whether you accept the [Terms and Conditions](https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf) for publishing extensions in the CloudFormation registry. You must accept the terms and conditions in order to register to publish public extensions to the CloudFormation registry.
  ///
  /// The default is `false`.
  bool? get acceptTermsAndConditions;

  /// If you are using a Bitbucket or GitHub account for identity verification, the Amazon Resource Name (ARN) for your connection to that account.
  ///
  /// For more information, see [Registering your account to publish CloudFormation extensions](https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs) in the _CloudFormation CLI User Guide_.
  String? get connectionArn;
  @override
  RegisterPublisherInput getPayload() => this;
  @override
  List<Object?> get props => [
        acceptTermsAndConditions,
        connectionArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegisterPublisherInput');
    helper.add(
      'acceptTermsAndConditions',
      acceptTermsAndConditions,
    );
    helper.add(
      'connectionArn',
      connectionArn,
    );
    return helper.toString();
  }
}

class RegisterPublisherInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<RegisterPublisherInput> {
  const RegisterPublisherInputAwsQuerySerializer()
      : super('RegisterPublisherInput');

  @override
  Iterable<Type> get types => const [
        RegisterPublisherInput,
        _$RegisterPublisherInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RegisterPublisherInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterPublisherInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AcceptTermsAndConditions':
          if (value != null) {
            result.acceptTermsAndConditions = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ConnectionArn':
          if (value != null) {
            result.connectionArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RegisterPublisherInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RegisterPublisherInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.acceptTermsAndConditions != null) {
      result
        ..add(const _i1.XmlElementName('AcceptTermsAndConditions'))
        ..add(serializers.serialize(
          payload.acceptTermsAndConditions!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.connectionArn != null) {
      result
        ..add(const _i1.XmlElementName('ConnectionArn'))
        ..add(serializers.serialize(
          payload.connectionArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}