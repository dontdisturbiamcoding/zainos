import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropiedadesRecord extends FirestoreRecord {
  PropiedadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "ref" field.
  int? _ref;
  int get ref => _ref ?? 0;
  bool hasRef() => _ref != null;

  // "progreso" field.
  TareasStruct? _progreso;
  TareasStruct get progreso => _progreso ?? TareasStruct();
  bool hasProgreso() => _progreso != null;

  // "porcentajeBar" field.
  double? _porcentajeBar;
  double get porcentajeBar => _porcentajeBar ?? 0.0;
  bool hasPorcentajeBar() => _porcentajeBar != null;

  // "porcentaje" field.
  String? _porcentaje;
  String get porcentaje => _porcentaje ?? '';
  bool hasPorcentaje() => _porcentaje != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _direccion = snapshotData['direccion'] as String?;
    _estado = snapshotData['estado'] as String?;
    _ref = castToType<int>(snapshotData['ref']);
    _progreso = snapshotData['progreso'] is TareasStruct
        ? snapshotData['progreso']
        : TareasStruct.maybeFromMap(snapshotData['progreso']);
    _porcentajeBar = castToType<double>(snapshotData['porcentajeBar']);
    _porcentaje = snapshotData['porcentaje'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('propiedades');

  static Stream<PropiedadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropiedadesRecord.fromSnapshot(s));

  static Future<PropiedadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropiedadesRecord.fromSnapshot(s));

  static PropiedadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropiedadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropiedadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropiedadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropiedadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropiedadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropiedadesRecordData({
  String? direccion,
  String? estado,
  int? ref,
  TareasStruct? progreso,
  double? porcentajeBar,
  String? porcentaje,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'direccion': direccion,
      'estado': estado,
      'ref': ref,
      'progreso': TareasStruct().toMap(),
      'porcentajeBar': porcentajeBar,
      'porcentaje': porcentaje,
      'email': email,
    }.withoutNulls,
  );

  // Handle nested data for "progreso" field.
  addTareasStructData(firestoreData, progreso, 'progreso');

  return firestoreData;
}

class PropiedadesRecordDocumentEquality implements Equality<PropiedadesRecord> {
  const PropiedadesRecordDocumentEquality();

  @override
  bool equals(PropiedadesRecord? e1, PropiedadesRecord? e2) {
    return e1?.direccion == e2?.direccion &&
        e1?.estado == e2?.estado &&
        e1?.ref == e2?.ref &&
        e1?.progreso == e2?.progreso &&
        e1?.porcentajeBar == e2?.porcentajeBar &&
        e1?.porcentaje == e2?.porcentaje &&
        e1?.email == e2?.email;
  }

  @override
  int hash(PropiedadesRecord? e) => const ListEquality().hash([
        e?.direccion,
        e?.estado,
        e?.ref,
        e?.progreso,
        e?.porcentajeBar,
        e?.porcentaje,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is PropiedadesRecord;
}
