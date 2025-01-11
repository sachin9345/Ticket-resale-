// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoryRecord> _$historyRecordSerializer =
    new _$HistoryRecordSerializer();

class _$HistoryRecordSerializer implements StructuredSerializer<HistoryRecord> {
  @override
  final Iterable<Type> types = const [HistoryRecord, _$HistoryRecord];
  @override
  final String wireName = 'HistoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.hostref;
    if (value != null) {
      result
        ..add('hostref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HistoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hostref':
          result.hostref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryRecord extends HistoryRecord {
  @override
  final DocumentReference<Object?>? hostref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HistoryRecord([void Function(HistoryRecordBuilder)? updates]) =>
      (new HistoryRecordBuilder()..update(updates))._build();

  _$HistoryRecord._({this.hostref, this.ffRef}) : super._();

  @override
  HistoryRecord rebuild(void Function(HistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryRecordBuilder toBuilder() => new HistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryRecord &&
        hostref == other.hostref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hostref.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistoryRecord')
          ..add('hostref', hostref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HistoryRecordBuilder
    implements Builder<HistoryRecord, HistoryRecordBuilder> {
  _$HistoryRecord? _$v;

  DocumentReference<Object?>? _hostref;
  DocumentReference<Object?>? get hostref => _$this._hostref;
  set hostref(DocumentReference<Object?>? hostref) => _$this._hostref = hostref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HistoryRecordBuilder() {
    HistoryRecord._initializeBuilder(this);
  }

  HistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hostref = $v.hostref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryRecord;
  }

  @override
  void update(void Function(HistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistoryRecord build() => _build();

  _$HistoryRecord _build() {
    final _$result =
        _$v ?? new _$HistoryRecord._(hostref: hostref, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
