import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'movie_record.g.dart';

abstract class MovieRecord implements Built<MovieRecord, MovieRecordBuilder> {
  static Serializer<MovieRecord> get serializer => _$movieRecordSerializer;

  String? get name;

  int? get phnnumber;

  String? get moviename;

  String? get venue;

  int? get tickets;

  int? get price;

  DocumentReference? get userref;

  DateTime? get lastupdated;

  LatLng? get location;

  DateTime? get movdate;

  DateTime? get movtime;

  String? get seatnum;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MovieRecordBuilder builder) => builder
    ..name = ''
    ..phnnumber = 0
    ..moviename = ''
    ..venue = ''
    ..tickets = 0
    ..price = 0
    ..seatnum = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movie');

  static Stream<MovieRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MovieRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MovieRecord._();
  factory MovieRecord([void Function(MovieRecordBuilder) updates]) =
      _$MovieRecord;

  static MovieRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMovieRecordData({
  String? name,
  int? phnnumber,
  String? moviename,
  String? venue,
  int? tickets,
  int? price,
  DocumentReference? userref,
  DateTime? lastupdated,
  LatLng? location,
  DateTime? movdate,
  DateTime? movtime,
  String? seatnum,
}) {
  final firestoreData = serializers.toFirestore(
    MovieRecord.serializer,
    MovieRecord(
      (m) => m
        ..name = name
        ..phnnumber = phnnumber
        ..moviename = moviename
        ..venue = venue
        ..tickets = tickets
        ..price = price
        ..userref = userref
        ..lastupdated = lastupdated
        ..location = location
        ..movdate = movdate
        ..movtime = movtime
        ..seatnum = seatnum,
    ),
  );

  return firestoreData;
}
