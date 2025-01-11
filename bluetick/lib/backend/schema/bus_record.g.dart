// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bus_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BusRecord> _$busRecordSerializer = new _$BusRecordSerializer();

class _$BusRecordSerializer implements StructuredSerializer<BusRecord> {
  @override
  final Iterable<Type> types = const [BusRecord, _$BusRecord];
  @override
  final String wireName = 'BusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BusRecord object,
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
    value = object.busname;
    if (value != null) {
      result
        ..add('busname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pick;
    if (value != null) {
      result
        ..add('pick')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.drop;
    if (value != null) {
      result
        ..add('drop')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.busnum;
    if (value != null) {
      result
        ..add('busnum')
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
    value = object.lastupdted;
    if (value != null) {
      result
        ..add('lastupdted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.arrdate;
    if (value != null) {
      result
        ..add('arrdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.arrtime;
    if (value != null) {
      result
        ..add('arrtime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.busdate;
    if (value != null) {
      result
        ..add('busdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bustime;
    if (value != null) {
      result
        ..add('bustime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.seatnum;
    if (value != null) {
      result
        ..add('seatnum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  BusRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BusRecordBuilder();

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
        case 'busname':
          result.busname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pick':
          result.pick = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'drop':
          result.drop = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'busnum':
          result.busnum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userref':
          result.userref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'lastupdted':
          result.lastupdted = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'arrdate':
          result.arrdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'arrtime':
          result.arrtime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'busdate':
          result.busdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'bustime':
          result.bustime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'seatnum':
          result.seatnum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$BusRecord extends BusRecord {
  @override
  final String? name;
  @override
  final int? phnnumber;
  @override
  final String? busname;
  @override
  final String? pick;
  @override
  final String? drop;
  @override
  final int? price;
  @override
  final String? busnum;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DateTime? lastupdted;
  @override
  final DateTime? arrdate;
  @override
  final DateTime? arrtime;
  @override
  final DateTime? busdate;
  @override
  final DateTime? bustime;
  @override
  final String? seatnum;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BusRecord([void Function(BusRecordBuilder)? updates]) =>
      (new BusRecordBuilder()..update(updates))._build();

  _$BusRecord._(
      {this.name,
      this.phnnumber,
      this.busname,
      this.pick,
      this.drop,
      this.price,
      this.busnum,
      this.userref,
      this.lastupdted,
      this.arrdate,
      this.arrtime,
      this.busdate,
      this.bustime,
      this.seatnum,
      this.ffRef})
      : super._();

  @override
  BusRecord rebuild(void Function(BusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BusRecordBuilder toBuilder() => new BusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BusRecord &&
        name == other.name &&
        phnnumber == other.phnnumber &&
        busname == other.busname &&
        pick == other.pick &&
        drop == other.drop &&
        price == other.price &&
        busnum == other.busnum &&
        userref == other.userref &&
        lastupdted == other.lastupdted &&
        arrdate == other.arrdate &&
        arrtime == other.arrtime &&
        busdate == other.busdate &&
        bustime == other.bustime &&
        seatnum == other.seatnum &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phnnumber.hashCode);
    _$hash = $jc(_$hash, busname.hashCode);
    _$hash = $jc(_$hash, pick.hashCode);
    _$hash = $jc(_$hash, drop.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, busnum.hashCode);
    _$hash = $jc(_$hash, userref.hashCode);
    _$hash = $jc(_$hash, lastupdted.hashCode);
    _$hash = $jc(_$hash, arrdate.hashCode);
    _$hash = $jc(_$hash, arrtime.hashCode);
    _$hash = $jc(_$hash, busdate.hashCode);
    _$hash = $jc(_$hash, bustime.hashCode);
    _$hash = $jc(_$hash, seatnum.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BusRecord')
          ..add('name', name)
          ..add('phnnumber', phnnumber)
          ..add('busname', busname)
          ..add('pick', pick)
          ..add('drop', drop)
          ..add('price', price)
          ..add('busnum', busnum)
          ..add('userref', userref)
          ..add('lastupdted', lastupdted)
          ..add('arrdate', arrdate)
          ..add('arrtime', arrtime)
          ..add('busdate', busdate)
          ..add('bustime', bustime)
          ..add('seatnum', seatnum)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BusRecordBuilder implements Builder<BusRecord, BusRecordBuilder> {
  _$BusRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phnnumber;
  int? get phnnumber => _$this._phnnumber;
  set phnnumber(int? phnnumber) => _$this._phnnumber = phnnumber;

  String? _busname;
  String? get busname => _$this._busname;
  set busname(String? busname) => _$this._busname = busname;

  String? _pick;
  String? get pick => _$this._pick;
  set pick(String? pick) => _$this._pick = pick;

  String? _drop;
  String? get drop => _$this._drop;
  set drop(String? drop) => _$this._drop = drop;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _busnum;
  String? get busnum => _$this._busnum;
  set busnum(String? busnum) => _$this._busnum = busnum;

  DocumentReference<Object?>? _userref;
  DocumentReference<Object?>? get userref => _$this._userref;
  set userref(DocumentReference<Object?>? userref) => _$this._userref = userref;

  DateTime? _lastupdted;
  DateTime? get lastupdted => _$this._lastupdted;
  set lastupdted(DateTime? lastupdted) => _$this._lastupdted = lastupdted;

  DateTime? _arrdate;
  DateTime? get arrdate => _$this._arrdate;
  set arrdate(DateTime? arrdate) => _$this._arrdate = arrdate;

  DateTime? _arrtime;
  DateTime? get arrtime => _$this._arrtime;
  set arrtime(DateTime? arrtime) => _$this._arrtime = arrtime;

  DateTime? _busdate;
  DateTime? get busdate => _$this._busdate;
  set busdate(DateTime? busdate) => _$this._busdate = busdate;

  DateTime? _bustime;
  DateTime? get bustime => _$this._bustime;
  set bustime(DateTime? bustime) => _$this._bustime = bustime;

  String? _seatnum;
  String? get seatnum => _$this._seatnum;
  set seatnum(String? seatnum) => _$this._seatnum = seatnum;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BusRecordBuilder() {
    BusRecord._initializeBuilder(this);
  }

  BusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phnnumber = $v.phnnumber;
      _busname = $v.busname;
      _pick = $v.pick;
      _drop = $v.drop;
      _price = $v.price;
      _busnum = $v.busnum;
      _userref = $v.userref;
      _lastupdted = $v.lastupdted;
      _arrdate = $v.arrdate;
      _arrtime = $v.arrtime;
      _busdate = $v.busdate;
      _bustime = $v.bustime;
      _seatnum = $v.seatnum;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BusRecord;
  }

  @override
  void update(void Function(BusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BusRecord build() => _build();

  _$BusRecord _build() {
    final _$result = _$v ??
        new _$BusRecord._(
            name: name,
            phnnumber: phnnumber,
            busname: busname,
            pick: pick,
            drop: drop,
            price: price,
            busnum: busnum,
            userref: userref,
            lastupdted: lastupdted,
            arrdate: arrdate,
            arrtime: arrtime,
            busdate: busdate,
            bustime: bustime,
            seatnum: seatnum,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
