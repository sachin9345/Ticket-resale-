// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SportsRecord> _$sportsRecordSerializer =
    new _$SportsRecordSerializer();

class _$SportsRecordSerializer implements StructuredSerializer<SportsRecord> {
  @override
  final Iterable<Type> types = const [SportsRecord, _$SportsRecord];
  @override
  final String wireName = 'SportsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SportsRecord object,
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
    value = object.phnnum;
    if (value != null) {
      result
        ..add('phnnum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.seat;
    if (value != null) {
      result
        ..add('seat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sporttype;
    if (value != null) {
      result
        ..add('sporttype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.place;
    if (value != null) {
      result
        ..add('place')
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
    value = object.teama;
    if (value != null) {
      result
        ..add('teama')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamb;
    if (value != null) {
      result
        ..add('teamb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.spodate;
    if (value != null) {
      result
        ..add('spodate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.spotime;
    if (value != null) {
      result
        ..add('spotime')
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
  SportsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SportsRecordBuilder();

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
        case 'phnnum':
          result.phnnum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'seat':
          result.seat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sporttype':
          result.sporttype = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place':
          result.place = serializers.deserialize(value,
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
        case 'teama':
          result.teama = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teamb':
          result.teamb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'spodate':
          result.spodate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'spotime':
          result.spotime = serializers.deserialize(value,
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

class _$SportsRecord extends SportsRecord {
  @override
  final String? name;
  @override
  final int? phnnum;
  @override
  final String? seat;
  @override
  final String? sporttype;
  @override
  final String? place;
  @override
  final int? tickets;
  @override
  final int? price;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DateTime? lastupdated;
  @override
  final String? teama;
  @override
  final String? teamb;
  @override
  final DateTime? spodate;
  @override
  final DateTime? spotime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SportsRecord([void Function(SportsRecordBuilder)? updates]) =>
      (new SportsRecordBuilder()..update(updates))._build();

  _$SportsRecord._(
      {this.name,
      this.phnnum,
      this.seat,
      this.sporttype,
      this.place,
      this.tickets,
      this.price,
      this.userref,
      this.lastupdated,
      this.teama,
      this.teamb,
      this.spodate,
      this.spotime,
      this.ffRef})
      : super._();

  @override
  SportsRecord rebuild(void Function(SportsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SportsRecordBuilder toBuilder() => new SportsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SportsRecord &&
        name == other.name &&
        phnnum == other.phnnum &&
        seat == other.seat &&
        sporttype == other.sporttype &&
        place == other.place &&
        tickets == other.tickets &&
        price == other.price &&
        userref == other.userref &&
        lastupdated == other.lastupdated &&
        teama == other.teama &&
        teamb == other.teamb &&
        spodate == other.spodate &&
        spotime == other.spotime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phnnum.hashCode);
    _$hash = $jc(_$hash, seat.hashCode);
    _$hash = $jc(_$hash, sporttype.hashCode);
    _$hash = $jc(_$hash, place.hashCode);
    _$hash = $jc(_$hash, tickets.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, userref.hashCode);
    _$hash = $jc(_$hash, lastupdated.hashCode);
    _$hash = $jc(_$hash, teama.hashCode);
    _$hash = $jc(_$hash, teamb.hashCode);
    _$hash = $jc(_$hash, spodate.hashCode);
    _$hash = $jc(_$hash, spotime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SportsRecord')
          ..add('name', name)
          ..add('phnnum', phnnum)
          ..add('seat', seat)
          ..add('sporttype', sporttype)
          ..add('place', place)
          ..add('tickets', tickets)
          ..add('price', price)
          ..add('userref', userref)
          ..add('lastupdated', lastupdated)
          ..add('teama', teama)
          ..add('teamb', teamb)
          ..add('spodate', spodate)
          ..add('spotime', spotime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SportsRecordBuilder
    implements Builder<SportsRecord, SportsRecordBuilder> {
  _$SportsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phnnum;
  int? get phnnum => _$this._phnnum;
  set phnnum(int? phnnum) => _$this._phnnum = phnnum;

  String? _seat;
  String? get seat => _$this._seat;
  set seat(String? seat) => _$this._seat = seat;

  String? _sporttype;
  String? get sporttype => _$this._sporttype;
  set sporttype(String? sporttype) => _$this._sporttype = sporttype;

  String? _place;
  String? get place => _$this._place;
  set place(String? place) => _$this._place = place;

  int? _tickets;
  int? get tickets => _$this._tickets;
  set tickets(int? tickets) => _$this._tickets = tickets;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  DateTime? _lastupdated;
  DateTime? get lastupdated => _$this._lastupdated;
  set lastupdated(DateTime? lastupdated) => _$this._lastupdated = lastupdated;

  String? _teama;
  String? get teama => _$this._teama;
  set teama(String? teama) => _$this._teama = teama;

  String? _teamb;
  String? get teamb => _$this._teamb;
  set teamb(String? teamb) => _$this._teamb = teamb;

  DateTime? _spodate;
  DateTime? get spodate => _$this._spodate;
  set spodate(DateTime? spodate) => _$this._spodate = spodate;

  DateTime? _spotime;
  DateTime? get spotime => _$this._spotime;
  set spotime(DateTime? spotime) => _$this._spotime = spotime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SportsRecordBuilder() {
    SportsRecord._initializeBuilder(this);
  }

  SportsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phnnum = $v.phnnum;
      _seat = $v.seat;
      _sporttype = $v.sporttype;
      _place = $v.place;
      _tickets = $v.tickets;
      _price = $v.price;
      _userref = $v.userref;
      _lastupdated = $v.lastupdated;
      _teama = $v.teama;
      _teamb = $v.teamb;
      _spodate = $v.spodate;
      _spotime = $v.spotime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SportsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SportsRecord;
  }

  @override
  void update(void Function(SportsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SportsRecord build() => _build();

  _$SportsRecord _build() {
    final _$result = _$v ??
        new _$SportsRecord._(
            name: name,
            phnnum: phnnum,
            seat: seat,
            sporttype: sporttype,
            place: place,
            tickets: tickets,
            price: price,
            userref: userref,
            lastupdated: lastupdated,
            teama: teama,
            teamb: teamb,
            spodate: spodate,
            spotime: spotime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
