import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentesRecord extends FirestoreRecord {
  AgentesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nameAgente" field.
  String? _nameAgente;
  String get nameAgente => _nameAgente ?? '';
  bool hasNameAgente() => _nameAgente != null;

  // "photoPerfil" field.
  String? _photoPerfil;
  String get photoPerfil => _photoPerfil ?? '';
  bool hasPhotoPerfil() => _photoPerfil != null;

  // "puesto" field.
  String? _puesto;
  String get puesto => _puesto ?? '';
  bool hasPuesto() => _puesto != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "emailCliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  // "telefonoAgente" field.
  String? _telefonoAgente;
  String get telefonoAgente => _telefonoAgente ?? '';
  bool hasTelefonoAgente() => _telefonoAgente != null;

  // "emailAgente" field.
  String? _emailAgente;
  String get emailAgente => _emailAgente ?? '';
  bool hasEmailAgente() => _emailAgente != null;

  void _initializeFields() {
    _nameAgente = snapshotData['nameAgente'] as String?;
    _photoPerfil = snapshotData['photoPerfil'] as String?;
    _puesto = snapshotData['puesto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _emailCliente = snapshotData['emailCliente'] as String?;
    _telefonoAgente = snapshotData['telefonoAgente'] as String?;
    _emailAgente = snapshotData['emailAgente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agentes');

  static Stream<AgentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgentesRecord.fromSnapshot(s));

  static Future<AgentesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgentesRecord.fromSnapshot(s));

  static AgentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgentesRecordData({
  String? nameAgente,
  String? photoPerfil,
  String? puesto,
  String? descripcion,
  String? emailCliente,
  String? telefonoAgente,
  String? emailAgente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameAgente': nameAgente,
      'photoPerfil': photoPerfil,
      'puesto': puesto,
      'descripcion': descripcion,
      'emailCliente': emailCliente,
      'telefonoAgente': telefonoAgente,
      'emailAgente': emailAgente,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgentesRecordDocumentEquality implements Equality<AgentesRecord> {
  const AgentesRecordDocumentEquality();

  @override
  bool equals(AgentesRecord? e1, AgentesRecord? e2) {
    return e1?.nameAgente == e2?.nameAgente &&
        e1?.photoPerfil == e2?.photoPerfil &&
        e1?.puesto == e2?.puesto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.emailCliente == e2?.emailCliente &&
        e1?.telefonoAgente == e2?.telefonoAgente &&
        e1?.emailAgente == e2?.emailAgente;
  }

  @override
  int hash(AgentesRecord? e) => const ListEquality().hash([
        e?.nameAgente,
        e?.photoPerfil,
        e?.puesto,
        e?.descripcion,
        e?.emailCliente,
        e?.telefonoAgente,
        e?.emailAgente
      ]);

  @override
  bool isValidKey(Object? o) => o is AgentesRecord;
}
