// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Visits shapes, returning `null` as the default.
class DefaultVisitor<T> implements ShapeVisitor<T?> {
  const DefaultVisitor();

  @override
  T? bigDecimalShape(BigDecimalShape shape, [Shape? parent]) => null;

  @override
  T? bigIntegerShape(BigIntegerShape shape, [Shape? parent]) => null;

  @override
  T? blobShape(BlobShape shape, [Shape? parent]) => null;

  @override
  T? booleanShape(BooleanShape shape, [Shape? parent]) => null;

  @override
  T? byteShape(ByteShape shape, [Shape? parent]) => null;

  @override
  T? documentShape(DocumentShape shape, [Shape? parent]) => null;

  @override
  T? doubleShape(DoubleShape shape, [Shape? parent]) => null;

  @override
  T? floatShape(FloatShape shape, [Shape? parent]) => null;

  @override
  T? integerShape(IntegerShape shape, [Shape? parent]) => null;

  @override
  T? listShape(ListShape shape, [Shape? parent]) => null;

  @override
  T? longShape(LongShape shape, [Shape? parent]) => null;

  @override
  T? mapShape(MapShape shape, [Shape? parent]) => null;

  @override
  T? memberShape(MemberShape shape, [Shape? parent]) => null;

  @override
  T? operationShape(OperationShape shape, [Shape? parent]) => null;

  @override
  T? resourceShape(ResourceShape shape, [Shape? parent]) => null;

  @override
  T? serviceShape(ServiceShape shape, [Shape? parent]) => null;

  @override
  T? setShape(SetShape shape, [Shape? parent]) => null;

  @override
  T? shortShape(ShortShape shape, [Shape? parent]) => null;

  @override
  T? stringShape(StringShape shape, [Shape? parent]) => null;

  @override
  T? structureShape(StructureShape shape, [Shape? parent]) => null;

  @override
  T? timestampShape(TimestampShape shape, [Shape? parent]) => null;

  @override
  T? unionShape(UnionShape shape, [Shape? parent]) => null;

  @override
  T? primitiveBooleanShape(PrimitiveBooleanShape shape, [Shape? parent]) =>
      null;

  @override
  T? primitiveByteShape(PrimitiveByteShape shape, [Shape? parent]) => null;

  @override
  T? primitiveDoubleShape(PrimitiveDoubleShape shape, [Shape? parent]) => null;

  @override
  T? primitiveFloatShape(PrimitiveFloatShape shape, [Shape? parent]) => null;

  @override
  T? primitiveIntegerShape(PrimitiveIntegerShape shape, [Shape? parent]) =>
      null;

  @override
  T? primitiveLongShape(PrimitiveLongShape shape, [Shape? parent]) => null;

  @override
  T? primitiveShortShape(PrimitiveShortShape shape, [Shape? parent]) => null;

  @override
  T? enumShape(EnumShape shape, [Shape? parent]) => null;
}
