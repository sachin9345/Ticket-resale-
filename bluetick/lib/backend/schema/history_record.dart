import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'history_record.g.dart';

abstract class HistoryRecord
    implements Built<HistoryRecord, HistoryRecordBuilder> {
  static Serializer<HistoryRecord> get serializer => _$historyRecordSerializer;

  DocumentReference? get hostref;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HistoryRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('history');

  static Stream<HistoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HistoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HistoryRecord._();
  factory HistoryRecord([void Function(HistoryRecordBuilder) updates]) =
      _$HistoryRecord;

  static HistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHistoryRecordData({
  DocumentReference? hostref,
}) {
  final firestoreData = serializers.toFirestore(
    HistoryRecord.serializer,
    HistoryRecord(
      (h) => h..hostref = hostref,
    ),
  );

  return firestoreData;
}
