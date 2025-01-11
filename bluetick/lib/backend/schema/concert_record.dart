import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'concert_record.g.dart';

abstract class ConcertRecord
    implements Built<ConcertRecord, ConcertRecordBuilder> {
  static Serializer<ConcertRecord> get serializer => _$concertRecordSerializer;

  String? get name;

  int? get phnnumber;

  String? get cventname;

  String? get eventclass;

  String? get eventvenue;

  int? get tickets;

  int? get price;

  String? get duration;

  DocumentReference? get userref;

  DateTime? get lastupdated;

  DateTime? get evedate;

  DateTime? get evetime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ConcertRecordBuilder builder) => builder
    ..name = ''
    ..phnnumber = 0
    ..cventname = ''
    ..eventclass = ''
    ..eventvenue = ''
    ..tickets = 0
    ..price = 0
    ..duration = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('concert');

  static Stream<ConcertRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConcertRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConcertRecord._();
  factory ConcertRecord([void Function(ConcertRecordBuilder) updates]) =
      _$ConcertRecord;

  static ConcertRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConcertRecordData({
  String? name,
  int? phnnumber,
  String? cventname,
  String? eventclass,
  String? eventvenue,
  int? tickets,
  int? price,
  String? duration,
  DocumentReference? userref,
  DateTime? lastupdated,
  DateTime? evedate,
  DateTime? evetime,
}) {
  final firestoreData = serializers.toFirestore(
    ConcertRecord.serializer,
    ConcertRecord(
      (c) => c
        ..name = name
        ..phnnumber = phnnumber
        ..cventname = cventname
        ..eventclass = eventclass
        ..eventvenue = eventvenue
        ..tickets = tickets
        ..price = price
        ..duration = duration
        ..userref = userref
        ..lastupdated = lastupdated
        ..evedate = evedate
        ..evetime = evetime,
    ),
  );

  return firestoreData;
}
