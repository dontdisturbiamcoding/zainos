import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ValoracionesAgentesRecord extends FirestoreRecord {
  ValoracionesAgentesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "agente_email" field.
  String? _agenteEmail;
  String get agenteEmail => _agenteEmail ?? '';
  bool hasAgenteEmail() => _agenteEmail != null;

  // "user_email" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "puntuacion" field.
  double? _puntuacion;
  double get puntuacion => _puntuacion ?? 0.0;
  bool hasPuntuacion() => _puntuacion != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _agenteEmail = snapshotData['agente_email'] as String?;
    _userEmail = snapshotData['user_email'] as String?;
    _puntuacion = castToType<double>(snapshotData['puntuacion']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('valoraciones_agentes');

  static Stream<ValoracionesAgentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ValoracionesAgentesRecord.fromSnapshot(s));

  static Future<ValoracionesAgentesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ValoracionesAgentesRecord.fromSnapshot(s));

  static ValoracionesAgentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ValoracionesAgentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ValoracionesAgentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ValoracionesAgentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ValoracionesAgentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ValoracionesAgentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createValoracionesAgentesRecordData({
  String? agenteEmail,
  String? userEmail,
  double? puntuacion,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'agente_email': agenteEmail,
      'user_email': userEmail,
      'puntuacion': puntuacion,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ValoracionesAgentesRecordDocumentEquality
    implements Equality<ValoracionesAgentesRecord> {
  const ValoracionesAgentesRecordDocumentEquality();

  @override
  bool equals(ValoracionesAgentesRecord? e1, ValoracionesAgentesRecord? e2) {
    return e1?.agenteEmail == e2?.agenteEmail &&
        e1?.userEmail == e2?.userEmail &&
        e1?.puntuacion == e2?.puntuacion &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(ValoracionesAgentesRecord? e) => const ListEquality()
      .hash([e?.agenteEmail, e?.userEmail, e?.puntuacion, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is ValoracionesAgentesRecord;
}
