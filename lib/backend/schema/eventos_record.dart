import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventosRecord extends FirestoreRecord {
  EventosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "hora" field.
  String? _hora;
  String get hora => _hora ?? '';
  bool hasHora() => _hora != null;

  // "tipoVisita" field.
  String? _tipoVisita;
  String get tipoVisita => _tipoVisita ?? '';
  bool hasTipoVisita() => _tipoVisita != null;

  // "nombreComprador" field.
  String? _nombreComprador;
  String get nombreComprador => _nombreComprador ?? '';
  bool hasNombreComprador() => _nombreComprador != null;

  // "diaVisita" field.
  DateTime? _diaVisita;
  DateTime? get diaVisita => _diaVisita;
  bool hasDiaVisita() => _diaVisita != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _hora = snapshotData['hora'] as String?;
    _tipoVisita = snapshotData['tipoVisita'] as String?;
    _nombreComprador = snapshotData['nombreComprador'] as String?;
    _diaVisita = snapshotData['diaVisita'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventos');

  static Stream<EventosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventosRecord.fromSnapshot(s));

  static Future<EventosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventosRecord.fromSnapshot(s));

  static EventosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventosRecordData({
  String? email,
  String? hora,
  String? tipoVisita,
  String? nombreComprador,
  DateTime? diaVisita,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'hora': hora,
      'tipoVisita': tipoVisita,
      'nombreComprador': nombreComprador,
      'diaVisita': diaVisita,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventosRecordDocumentEquality implements Equality<EventosRecord> {
  const EventosRecordDocumentEquality();

  @override
  bool equals(EventosRecord? e1, EventosRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.hora == e2?.hora &&
        e1?.tipoVisita == e2?.tipoVisita &&
        e1?.nombreComprador == e2?.nombreComprador &&
        e1?.diaVisita == e2?.diaVisita;
  }

  @override
  int hash(EventosRecord? e) => const ListEquality().hash(
      [e?.email, e?.hora, e?.tipoVisita, e?.nombreComprador, e?.diaVisita]);

  @override
  bool isValidKey(Object? o) => o is EventosRecord;
}
