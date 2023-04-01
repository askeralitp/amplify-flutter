// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_policy_status_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/policy_status.dart' as _i3;

part 'get_bucket_policy_status_output.g.dart';

abstract class GetBucketPolicyStatusOutput
    with _i1.AWSEquatable<GetBucketPolicyStatusOutput>
    implements
        Built<GetBucketPolicyStatusOutput, GetBucketPolicyStatusOutputBuilder>,
        _i2.HasPayload<_i3.PolicyStatus> {
  factory GetBucketPolicyStatusOutput({_i3.PolicyStatus? policyStatus}) {
    return _$GetBucketPolicyStatusOutput._(policyStatus: policyStatus);
  }

  factory GetBucketPolicyStatusOutput.build(
          [void Function(GetBucketPolicyStatusOutputBuilder) updates]) =
      _$GetBucketPolicyStatusOutput;

  const GetBucketPolicyStatusOutput._();

  /// Constructs a [GetBucketPolicyStatusOutput] from a [payload] and [response].
  factory GetBucketPolicyStatusOutput.fromResponse(
    _i3.PolicyStatus? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketPolicyStatusOutput.build((b) {
        if (payload != null) {
          b.policyStatus.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetBucketPolicyStatusOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketPolicyStatusOutputBuilder b) {}

  /// The policy status for the specified bucket.
  _i3.PolicyStatus? get policyStatus;
  @override
  _i3.PolicyStatus? getPayload() => policyStatus;
  @override
  List<Object?> get props => [policyStatus];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketPolicyStatusOutput');
    helper.add(
      'policyStatus',
      policyStatus,
    );
    return helper.toString();
  }
}

class GetBucketPolicyStatusOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.PolicyStatus> {
  const GetBucketPolicyStatusOutputRestXmlSerializer()
      : super('GetBucketPolicyStatusOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketPolicyStatusOutput,
        _$GetBucketPolicyStatusOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.PolicyStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.PolicyStatusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'IsPublic':
          result.isPublic = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = object is GetBucketPolicyStatusOutput
        ? object.getPayload()
        : (object as _i3.PolicyStatus?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PolicyStatus',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    result
      ..add(const _i2.XmlElementName('IsPublic'))
      ..add(serializers.serialize(
        payload.isPublic,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
