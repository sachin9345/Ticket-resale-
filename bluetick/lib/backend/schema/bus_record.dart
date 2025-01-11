import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bus_record.g.dart';

abstract class BusRecord implements Built<BusRecord, BusRecordBuilder> {
  static Serializer<BusRecord> get serializer => _$busRecordSerializer;

  String? get name;

  int? get phnnumber;

  String? get busname;

  String? get pick;

  String? get drop;

  int? get price;

  String? get busnum;

  DocumentReference? get userref;

  DateTime? get lastupdted;

  DateTime? get arrdate;

  DateTime? get arrtime;

  DateTime? get busdate;

  DateTime? get bustime;

  String? get seatnum;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BusRecordBuilder builder) => builder
    ..name = ''
    ..phnnumber = 0
    ..busname = ''
    ..pick = ''
    ..drop = ''
    ..price = 0
    ..busnum = ''
    ..seatnum = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bus');

  static Stream<BusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BusRecord._();
  factory BusRecord([void Function(BusRecordBuilder) updates]) = _$BusRecord;

  static BusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBusRecordData({
  String? name,
  int? phnnumber,
  String? busname,
  String? pick,
  String? drop,
  int? price,
  String? busnum,
  DocumentReference? userref,
  DateTime? lastupdted,
  DateTime? arrdate,
  DateTime? arrtime,
  DateTime? busdate,
  DateTime? bustime,
  String? seatnum,
}) {
  final firestoreData = serializers.toFirestore(
    BusRecord.serializer,
    BusRecord(
      (b) => b
        ..name = name
        ..phnnumber = phnnumber
        ..busname = busname
        ..pick = pick
        ..drop = drop
        ..price = price
        ..busnum = busnum
        ..userref = userref
        ..lastupdted = lastupdted
        ..arrdate = arrdate
        ..arrtime = arrtime
        ..busdate = busdate
        ..bustime = bustime
        ..seatnum = seatnum,
    ),
  );

  return firestoreData;
}
