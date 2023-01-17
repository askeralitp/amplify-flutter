// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.upload_part_copy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPartCopyRequest extends UploadPartCopyRequest {
  @override
  final String bucket;
  @override
  final String copySource;
  @override
  final String? copySourceIfMatch;
  @override
  final DateTime? copySourceIfModifiedSince;
  @override
  final String? copySourceIfNoneMatch;
  @override
  final DateTime? copySourceIfUnmodifiedSince;
  @override
  final String? copySourceRange;
  @override
  final String? copySourceSseCustomerAlgorithm;
  @override
  final String? copySourceSseCustomerKey;
  @override
  final String? copySourceSseCustomerKeyMd5;
  @override
  final String? expectedBucketOwner;
  @override
  final String? expectedSourceBucketOwner;
  @override
  final String key;
  @override
  final int partNumber;
  @override
  final _i3.RequestPayer? requestPayer;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String uploadId;

  factory _$UploadPartCopyRequest(
          [void Function(UploadPartCopyRequestBuilder)? updates]) =>
      (new UploadPartCopyRequestBuilder()..update(updates))._build();

  _$UploadPartCopyRequest._(
      {required this.bucket,
      required this.copySource,
      this.copySourceIfMatch,
      this.copySourceIfModifiedSince,
      this.copySourceIfNoneMatch,
      this.copySourceIfUnmodifiedSince,
      this.copySourceRange,
      this.copySourceSseCustomerAlgorithm,
      this.copySourceSseCustomerKey,
      this.copySourceSseCustomerKeyMd5,
      this.expectedBucketOwner,
      this.expectedSourceBucketOwner,
      required this.key,
      required this.partNumber,
      this.requestPayer,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5,
      required this.uploadId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'UploadPartCopyRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        copySource, r'UploadPartCopyRequest', 'copySource');
    BuiltValueNullFieldError.checkNotNull(key, r'UploadPartCopyRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(
        partNumber, r'UploadPartCopyRequest', 'partNumber');
    BuiltValueNullFieldError.checkNotNull(
        uploadId, r'UploadPartCopyRequest', 'uploadId');
  }

  @override
  UploadPartCopyRequest rebuild(
          void Function(UploadPartCopyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartCopyRequestBuilder toBuilder() =>
      new UploadPartCopyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartCopyRequest &&
        bucket == other.bucket &&
        copySource == other.copySource &&
        copySourceIfMatch == other.copySourceIfMatch &&
        copySourceIfModifiedSince == other.copySourceIfModifiedSince &&
        copySourceIfNoneMatch == other.copySourceIfNoneMatch &&
        copySourceIfUnmodifiedSince == other.copySourceIfUnmodifiedSince &&
        copySourceRange == other.copySourceRange &&
        copySourceSseCustomerAlgorithm ==
            other.copySourceSseCustomerAlgorithm &&
        copySourceSseCustomerKey == other.copySourceSseCustomerKey &&
        copySourceSseCustomerKeyMd5 == other.copySourceSseCustomerKeyMd5 &&
        expectedBucketOwner == other.expectedBucketOwner &&
        expectedSourceBucketOwner == other.expectedSourceBucketOwner &&
        key == other.key &&
        partNumber == other.partNumber &&
        requestPayer == other.requestPayer &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        uploadId == other.uploadId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                bucket
                                                                                    .hashCode),
                                                                            copySource
                                                                                .hashCode),
                                                                        copySourceIfMatch
                                                                            .hashCode),
                                                                    copySourceIfModifiedSince
                                                                        .hashCode),
                                                                copySourceIfNoneMatch
                                                                    .hashCode),
                                                            copySourceIfUnmodifiedSince
                                                                .hashCode),
                                                        copySourceRange
                                                            .hashCode),
                                                    copySourceSseCustomerAlgorithm
                                                        .hashCode),
                                                copySourceSseCustomerKey
                                                    .hashCode),
                                            copySourceSseCustomerKeyMd5
                                                .hashCode),
                                        expectedBucketOwner.hashCode),
                                    expectedSourceBucketOwner.hashCode),
                                key.hashCode),
                            partNumber.hashCode),
                        requestPayer.hashCode),
                    sseCustomerAlgorithm.hashCode),
                sseCustomerKey.hashCode),
            sseCustomerKeyMd5.hashCode),
        uploadId.hashCode));
  }
}

class UploadPartCopyRequestBuilder
    implements Builder<UploadPartCopyRequest, UploadPartCopyRequestBuilder> {
  _$UploadPartCopyRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _copySource;
  String? get copySource => _$this._copySource;
  set copySource(String? copySource) => _$this._copySource = copySource;

  String? _copySourceIfMatch;
  String? get copySourceIfMatch => _$this._copySourceIfMatch;
  set copySourceIfMatch(String? copySourceIfMatch) =>
      _$this._copySourceIfMatch = copySourceIfMatch;

  DateTime? _copySourceIfModifiedSince;
  DateTime? get copySourceIfModifiedSince => _$this._copySourceIfModifiedSince;
  set copySourceIfModifiedSince(DateTime? copySourceIfModifiedSince) =>
      _$this._copySourceIfModifiedSince = copySourceIfModifiedSince;

  String? _copySourceIfNoneMatch;
  String? get copySourceIfNoneMatch => _$this._copySourceIfNoneMatch;
  set copySourceIfNoneMatch(String? copySourceIfNoneMatch) =>
      _$this._copySourceIfNoneMatch = copySourceIfNoneMatch;

  DateTime? _copySourceIfUnmodifiedSince;
  DateTime? get copySourceIfUnmodifiedSince =>
      _$this._copySourceIfUnmodifiedSince;
  set copySourceIfUnmodifiedSince(DateTime? copySourceIfUnmodifiedSince) =>
      _$this._copySourceIfUnmodifiedSince = copySourceIfUnmodifiedSince;

  String? _copySourceRange;
  String? get copySourceRange => _$this._copySourceRange;
  set copySourceRange(String? copySourceRange) =>
      _$this._copySourceRange = copySourceRange;

  String? _copySourceSseCustomerAlgorithm;
  String? get copySourceSseCustomerAlgorithm =>
      _$this._copySourceSseCustomerAlgorithm;
  set copySourceSseCustomerAlgorithm(String? copySourceSseCustomerAlgorithm) =>
      _$this._copySourceSseCustomerAlgorithm = copySourceSseCustomerAlgorithm;

  String? _copySourceSseCustomerKey;
  String? get copySourceSseCustomerKey => _$this._copySourceSseCustomerKey;
  set copySourceSseCustomerKey(String? copySourceSseCustomerKey) =>
      _$this._copySourceSseCustomerKey = copySourceSseCustomerKey;

  String? _copySourceSseCustomerKeyMd5;
  String? get copySourceSseCustomerKeyMd5 =>
      _$this._copySourceSseCustomerKeyMd5;
  set copySourceSseCustomerKeyMd5(String? copySourceSseCustomerKeyMd5) =>
      _$this._copySourceSseCustomerKeyMd5 = copySourceSseCustomerKeyMd5;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _expectedSourceBucketOwner;
  String? get expectedSourceBucketOwner => _$this._expectedSourceBucketOwner;
  set expectedSourceBucketOwner(String? expectedSourceBucketOwner) =>
      _$this._expectedSourceBucketOwner = expectedSourceBucketOwner;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  _i3.RequestPayer? _requestPayer;
  _i3.RequestPayer? get requestPayer => _$this._requestPayer;
  set requestPayer(_i3.RequestPayer? requestPayer) =>
      _$this._requestPayer = requestPayer;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKey;
  String? get sseCustomerKey => _$this._sseCustomerKey;
  set sseCustomerKey(String? sseCustomerKey) =>
      _$this._sseCustomerKey = sseCustomerKey;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _uploadId;
  String? get uploadId => _$this._uploadId;
  set uploadId(String? uploadId) => _$this._uploadId = uploadId;

  UploadPartCopyRequestBuilder() {
    UploadPartCopyRequest._init(this);
  }

  UploadPartCopyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _copySource = $v.copySource;
      _copySourceIfMatch = $v.copySourceIfMatch;
      _copySourceIfModifiedSince = $v.copySourceIfModifiedSince;
      _copySourceIfNoneMatch = $v.copySourceIfNoneMatch;
      _copySourceIfUnmodifiedSince = $v.copySourceIfUnmodifiedSince;
      _copySourceRange = $v.copySourceRange;
      _copySourceSseCustomerAlgorithm = $v.copySourceSseCustomerAlgorithm;
      _copySourceSseCustomerKey = $v.copySourceSseCustomerKey;
      _copySourceSseCustomerKeyMd5 = $v.copySourceSseCustomerKeyMd5;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _expectedSourceBucketOwner = $v.expectedSourceBucketOwner;
      _key = $v.key;
      _partNumber = $v.partNumber;
      _requestPayer = $v.requestPayer;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _uploadId = $v.uploadId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPartCopyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartCopyRequest;
  }

  @override
  void update(void Function(UploadPartCopyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartCopyRequest build() => _build();

  _$UploadPartCopyRequest _build() {
    final _$result = _$v ??
        new _$UploadPartCopyRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(
                bucket, r'UploadPartCopyRequest', 'bucket'),
            copySource: BuiltValueNullFieldError.checkNotNull(
                copySource, r'UploadPartCopyRequest', 'copySource'),
            copySourceIfMatch: copySourceIfMatch,
            copySourceIfModifiedSince: copySourceIfModifiedSince,
            copySourceIfNoneMatch: copySourceIfNoneMatch,
            copySourceIfUnmodifiedSince: copySourceIfUnmodifiedSince,
            copySourceRange: copySourceRange,
            copySourceSseCustomerAlgorithm: copySourceSseCustomerAlgorithm,
            copySourceSseCustomerKey: copySourceSseCustomerKey,
            copySourceSseCustomerKeyMd5: copySourceSseCustomerKeyMd5,
            expectedBucketOwner: expectedBucketOwner,
            expectedSourceBucketOwner: expectedSourceBucketOwner,
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'UploadPartCopyRequest', 'key'),
            partNumber: BuiltValueNullFieldError.checkNotNull(
                partNumber, r'UploadPartCopyRequest', 'partNumber'),
            requestPayer: requestPayer,
            sseCustomerAlgorithm: sseCustomerAlgorithm,
            sseCustomerKey: sseCustomerKey,
            sseCustomerKeyMd5: sseCustomerKeyMd5,
            uploadId: BuiltValueNullFieldError.checkNotNull(
                uploadId, r'UploadPartCopyRequest', 'uploadId'));
    replace(_$result);
    return _$result;
  }
}

class _$UploadPartCopyRequestPayload extends UploadPartCopyRequestPayload {
  factory _$UploadPartCopyRequestPayload(
          [void Function(UploadPartCopyRequestPayloadBuilder)? updates]) =>
      (new UploadPartCopyRequestPayloadBuilder()..update(updates))._build();

  _$UploadPartCopyRequestPayload._() : super._();

  @override
  UploadPartCopyRequestPayload rebuild(
          void Function(UploadPartCopyRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartCopyRequestPayloadBuilder toBuilder() =>
      new UploadPartCopyRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartCopyRequestPayload;
  }

  @override
  int get hashCode {
    return 94100808;
  }
}

class UploadPartCopyRequestPayloadBuilder
    implements
        Builder<UploadPartCopyRequestPayload,
            UploadPartCopyRequestPayloadBuilder> {
  _$UploadPartCopyRequestPayload? _$v;

  UploadPartCopyRequestPayloadBuilder() {
    UploadPartCopyRequestPayload._init(this);
  }

  @override
  void replace(UploadPartCopyRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartCopyRequestPayload;
  }

  @override
  void update(void Function(UploadPartCopyRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartCopyRequestPayload build() => _build();

  _$UploadPartCopyRequestPayload _build() {
    final _$result = _$v ?? new _$UploadPartCopyRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas