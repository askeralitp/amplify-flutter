// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.documentation_versions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentationVersions extends DocumentationVersions {
  @override
  final _i3.BuiltList<_i2.DocumentationVersion>? items;
  @override
  final String? position;

  factory _$DocumentationVersions(
          [void Function(DocumentationVersionsBuilder)? updates]) =>
      (new DocumentationVersionsBuilder()..update(updates))._build();

  _$DocumentationVersions._({this.items, this.position}) : super._();

  @override
  DocumentationVersions rebuild(
          void Function(DocumentationVersionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentationVersionsBuilder toBuilder() =>
      new DocumentationVersionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentationVersions &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), position.hashCode));
  }
}

class DocumentationVersionsBuilder
    implements Builder<DocumentationVersions, DocumentationVersionsBuilder> {
  _$DocumentationVersions? _$v;

  _i3.ListBuilder<_i2.DocumentationVersion>? _items;
  _i3.ListBuilder<_i2.DocumentationVersion> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.DocumentationVersion>();
  set items(_i3.ListBuilder<_i2.DocumentationVersion>? items) =>
      _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DocumentationVersionsBuilder() {
    DocumentationVersions._init(this);
  }

  DocumentationVersionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentationVersions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentationVersions;
  }

  @override
  void update(void Function(DocumentationVersionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentationVersions build() => _build();

  _$DocumentationVersions _build() {
    _$DocumentationVersions _$result;
    try {
      _$result = _$v ??
          new _$DocumentationVersions._(
              items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DocumentationVersions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas