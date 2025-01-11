// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieRecord> _$movieRecordSerializer = new _$MovieRecordSerializer();

class _$MovieRecordSerializer implements StructuredSerializer<MovieRecord> {
  @override
  final Iterable<Type> types = const [MovieRecord, _$MovieRecord];
  @override
  final String wireName = 'MovieRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieRecord object,
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
    value = object.moviename;
    if (value != null) {
      result
        ..add('moviename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.venue;
    if (value != null) {
      result
        ..add('venue')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.movdate;
    if (value != null) {
      result
        ..add('movdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.movtime;
    if (value != null) {
      result
        ..add('movtime')
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
  MovieRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieRecordBuilder();

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
        case 'moviename':
          result.moviename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'venue':
          result.venue = serializers.deserialize(value,
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
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'movdate':
          result.movdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'movtime':
          result.movtime = serializers.deserialize(value,
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

class _$MovieRecord extends MovieRecord {
  @override
  final String? name;
  @override
  final int? phnnumber;
  @override
  final String? moviename;
  @override
  final String? venue;
  @override
  final int? tickets;
  @override
  final int? price;
  @override
  final DocumentReference<Object?>? userref;
  @override
  final DateTime? lastupdated;
  @override
  final LatLng? location;
  @override
  final DateTime? movdate;
  @override
  final DateTime? movtime;
  @override
  final String? seatnum;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MovieRecord([void Function(MovieRecordBuilder)? updates]) =>
      (new MovieRecordBuilder()..update(updates))._build();

  _$MovieRecord._(
      {this.name,
      this.phnnumber,
      this.moviename,
      this.venue,
      this.tickets,
      this.price,
      this.userref,
      this.lastupdated,
      this.location,
      this.movdate,
      this.movtime,
      this.seatnum,
      this.ffRef})
      : super._();

  @override
  MovieRecord rebuild(void Function(MovieRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieRecordBuilder toBuilder() => new MovieRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieRecord &&
        name == other.name &&
        phnnumber == other.phnnumber &&
        moviename == other.moviename &&
        venue == other.venue &&
        tickets == other.tickets &&
        price == other.price &&
        userref == other.userref &&
        lastupdated == other.lastupdated &&
        location == other.location &&
        movdate == other.movdate &&
        movtime == other.movtime &&
        seatnum == other.seatnum &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phnnumber.hashCode);
    _$hash = $jc(_$hash, moviename.hashCode);
    _$hash = $jc(_$hash, venue.hashCode);
    _$hash = $jc(_$hash, tickets.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, userref.hashCode);
    _$hash = $jc(_$hash, lastupdated.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, movdate.hashCode);
    _$hash = $jc(_$hash, movtime.hashCode);
    _$hash = $jc(_$hash, seatnum.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieRecord')
          ..add('name', name)
          ..add('phnnumber', phnnumber)
          ..add('moviename', moviename)
          ..add('venue', venue)
          ..add('tickets', tickets)
          ..add('price', price)
          ..add('userref', userref)
          ..add('lastupdated', lastupdated)
          ..add('location', location)
          ..add('movdate', movdate)
          ..add('movtime', movtime)
          ..add('seatnum', seatnum)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MovieRecordBuilder implements Builder<MovieRecord, MovieRecordBuilder> {
  _$MovieRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phnnumber;
  int? get phnnumber => _$this._phnnumber;
  set phnnumber(int? phnnumber) => _$this._phnnumber = phnnumber;

  String? _moviename;
  String? get moviename => _$this._moviename;
  set moviename(String? moviename) => _$this._moviename = moviename;

  String? _venue;
  String? get venue => _$this._venue;
  set venue(String? venue) => _$this._venue = venue;

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

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DateTime? _movdate;
  DateTime? get movdate => _$this._movdate;
  set movdate(DateTime? movdate) => _$this._movdate = movdate;

  DateTime? _movtime;
  DateTime? get movtime => _$this._movtime;
  set movtime(DateTime? movtime) => _$this._movtime = movtime;

  String? _seatnum;
  String? get seatnum => _$this._seatnum;
  set seatnum(String? seatnum) => _$this._seatnum = seatnum;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MovieRecordBuilder() {
    MovieRecord._initializeBuilder(this);
  }

  MovieRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phnnumber = $v.phnnumber;
      _moviename = $v.moviename;
      _venue = $v.venue;
      _tickets = $v.tickets;
      _price = $v.price;
      _userref = $v.userref;
      _lastupdated = $v.lastupdated;
      _location = $v.location;
      _movdate = $v.movdate;
      _movtime = $v.movtime;
      _seatnum = $v.seatnum;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieRecord;
  }

  @override
  void update(void Function(MovieRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieRecord build() => _build();

  _$MovieRecord _build() {
    final _$result = _$v ??
        new _$MovieRecord._(
            name: name,
            phnnumber: phnnumber,
            moviename: moviename,
            venue: venue,
            tickets: tickets,
            price: price,
            userref: userref,
            lastupdated: lastupdated,
            location: location,
            movdate: movdate,
            movtime: movtime,
            seatnum: seatnum,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
