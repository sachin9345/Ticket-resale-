import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sports_record.g.dart';

abstract class SportsRecord
    implements Built<SportsRecord, SportsRecordBuilder> {
  static Serializer<SportsRecord> get serializer => _$sportsRecordSerializer;

  String? get name;

  int? get phnnum;

  String? get seat;

  String? get sporttype;

  String? get place;

  int? get tickets;

  int? get price;

  DocumentReference? get userref;

  DateTime? get lastupdated;

  String? get teama;

  String? get teamb;

  DateTime? get spodate;

  DateTime? get spotime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SportsRecordBuilder builder) => builder
    ..name = ''
    ..phnnum = 0
    ..seat = ''
    ..sporttype = ''
    ..place = ''
    ..tickets = 0
    ..price = 0
    ..teama = ''
    ..teamb = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sports');

  static Stream<SportsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SportsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SportsRecord._();
  factory SportsRecord([void Function(SportsRecordBuilder) updates]) =
      _$SportsRecord;

  static SportsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSportsRecordData({
  String? name,
  int? phnnum,
  String? seat,
  String? sporttype,
  String? place,
  int? tickets,
  int? price,
  DocumentReference? userref,
  DateTime? lastupdated,
  String? teama,
  String? teamb,
  DateTime? spodate,
  DateTime? spotime,
}) {
  final firestoreData = serializers.toFirestore(
    SportsRecord.serializer,
    SportsRecord(
      (s) => s
        ..name = name
        ..phnnum = phnnum
        ..seat = seat
        ..sporttype = sporttype
        ..place = place
        ..tickets = tickets
        ..price = price
        ..userref = userref
        ..lastupdated = lastupdated
        ..teama = teama
        ..teamb = teamb
        ..spodate = spodate
        ..spotime = spotime,
    ),
  );

  return firestoreData;
}
