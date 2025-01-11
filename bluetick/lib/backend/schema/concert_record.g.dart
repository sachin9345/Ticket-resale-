// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concert_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConcertRecord> _$concertRecordSerializer =
    new _$ConcertRecordSerializer();

class _$ConcertRecordSerializer implements StructuredSerializer<ConcertRecord> {
  @override
  final Iterable<Type> types = const [ConcertRecord, _$ConcertRecord];
  @override
  final String wireName = 'ConcertRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConcertRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phnnumber;
    if (value != null) {
      result
        ..add('phnnumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cventname;
    if (value != null) {
      result
        ..add('cventname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventclass;
    if (value != null) {
      result
        ..add('eventclass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eventvenue;
    if (value != null) {
      result
        ..add('eventvenue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tickets;
    if (value != null) {
      result
        ..add('tickets')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userref;
    if (value != null) {
      result
        ..add('userref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.lastupdated;
    if (value != null) {
      result
        ..add('lastupdated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.evedate;
    if (value != null) {
      result
        ..add('evedate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.evetime;
    if (value != null) {
      result
        ..add('evetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ConcertRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConcertRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phnnumber':
          result.phnnumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cventname':
          result.cventname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eventclass':
          result.eventclass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'eventvenue':
          result.eventvenue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tickets':
          result.tickets = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userref':
          result.userref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'lastupdated':
          result.lastupdated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'evedate':
          result.evedate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'evetime':
          result.evetime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ConcertRecord extends ConcertRecord {
  @override
  final String? name;
  @override
  final int? phnnumber;
  @override
  final String? cventname;
  @override
  final String? eventclass;
  @override
  final String? eventvenue;
  @override
  final int? tickets;
  @override
  final int? price;
  @override
  final String? duration;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DateTime? lastupdated;
  @override
  final DateTime? evedate;
  @override
  final DateTime? evetime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConcertRecord([void Function(ConcertRecordBuilder)? updates]) =>
      (new ConcertRecordBuilder()..update(updates))._build();

  _$ConcertRecord._(
      {this.name,
      this.phnnumber,
      this.cventname,
      this.eventclass,
      this.eventvenue,
      this.tickets,
      this.price,
      this.duration,
      this.userref,
      this.lastupdated,
      this.evedate,
      this.evetime,
      this.ffRef})
      : super._();

  @override
  ConcertRecord rebuild(void Function(ConcertRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConcertRecordBuilder toBuilder() => new ConcertRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConcertRecord &&
        name == other.name &&
        phnnumber == other.phnnumber &&
        cventname == other.cventname &&
        eventclass == other.eventclass &&
        eventvenue == other.eventvenue &&
        tickets == other.tickets &&
        price == other.price &&
        duration == other.duration &&
        userref == other.userref &&
        lastupdated == other.lastupdated &&
        evedate == other.evedate &&
        evetime == other.evetime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phnnumber.hashCode);
    _$hash = $jc(_$hash, cventname.hashCode);
    _$hash = $jc(_$hash, eventclass.hashCode);
    _$hash = $jc(_$hash, eventvenue.hashCode);
    _$hash = $jc(_$hash, tickets.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, userref.hashCode);
    _$hash = $jc(_$hash, lastupdated.hashCode);
    _$hash = $jc(_$hash, evedate.hashCode);
    _$hash = $jc(_$hash, evetime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConcertRecord')
          ..add('name', name)
          ..add('phnnumber', phnnumber)
          ..add('cventname', cventname)
          ..add('eventclass', eventclass)
          ..add('eventvenue', eventvenue)
          ..add('tickets', tickets)
          ..add('price', price)
          ..add('duration', duration)
          ..add('userref', userref)
          ..add('lastupdated', lastupdated)
          ..add('evedate', evedate)
          ..add('evetime', evetime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConcertRecordBuilder
    implements Builder<ConcertRecord, ConcertRecordBuilder> {
  _$ConcertRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phnnumber;
  int? get phnnumber => _$this._phnnumber;
  set phnnumber(int? phnnumber) => _$this._phnnumber = phnnumber;

  String? _cventname;
  String? get cventname => _$this._cventname;
  set cventname(String? cventname) => _$this._cventname = cventname;

  String? _eventclass;
  String? get eventclass => _$this._eventclass;
  set eventclass(String? eventclass) => _$this._eventclass = eventclass;

  String? _eventvenue;
  String? get eventvenue => _$this._eventvenue;
  set eventvenue(String? eventvenue) => _$this._eventvenue = eventvenue;

  int? _tickets;
  int? get tickets => _$this._tickets;
  set tickets(int? tickets) => _$this._tickets = tickets;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  DateTime? _lastupdated;
  DateTime? get lastupdated => _$this._lastupdated;
  set lastupdated(DateTime? lastupdated) => _$this._lastupdated = lastupdated;

  DateTime? _evedate;
  DateTime? get evedate => _$this._evedate;
  set evedate(DateTime? evedate) => _$this._evedate = evedate;

  DateTime? _evetime;
  DateTime? get evetime => _$this._evetime;
  set evetime(DateTime? evetime) => _$this._evetime = evetime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConcertRecordBuilder() {
    ConcertRecord._initializeBuilder(this);
  }

  ConcertRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phnnumber = $v.phnnumber;
      _cventname = $v.cventname;
      _eventclass = $v.eventclass;
      _eventvenue = $v.eventvenue;
      _tickets = $v.tickets;
      _price = $v.price;
      _duration = $v.duration;
      _userref = $v.userref;
      _lastupdated = $v.lastupdated;
      _evedate = $v.evedate;
      _evetime = $v.evetime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConcertRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConcertRecord;
  }

  @override
  void update(void Function(ConcertRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConcertRecord build() => _build();

  _$ConcertRecord _build() {
    final _$result = _$v ??
        new _$ConcertRecord._(
            name: name,
            phnnumber: phnnumber,
            cventname: cventname,
            eventclass: eventclass,
            eventvenue: eventvenue,
            tickets: tickets,
            price: price,
            duration: duration,
            userref: userref,
            lastupdated: lastupdated,
            evedate: evedate,
            evetime: evetime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
