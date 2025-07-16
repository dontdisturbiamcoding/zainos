import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDocumentsRecord extends FirestoreRecord {
  UserDocumentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cdh_url" field.
  String? _cdhUrl;
  String get cdhUrl => _cdhUrl ?? '';
  bool hasCdhUrl() => _cdhUrl != null;

  // "cee_url" field.
  String? _ceeUrl;
  String get ceeUrl => _ceeUrl ?? '';
  bool hasCeeUrl() => _ceeUrl != null;

  // "contrato_url" field.
  String? _contratoUrl;
  String get contratoUrl => _contratoUrl ?? '';
  bool hasContratoUrl() => _contratoUrl != null;

  // "fotosAnuncio_url" field.
  String? _fotosAnuncioUrl;
  String get fotosAnuncioUrl => _fotosAnuncioUrl ?? '';
  bool hasFotosAnuncioUrl() => _fotosAnuncioUrl != null;

  // "checklist_url" field.
  String? _checklistUrl;
  String get checklistUrl => _checklistUrl ?? '';
  bool hasChecklistUrl() => _checklistUrl != null;

  // "autFincas_url" field.
  String? _autFincasUrl;
  String get autFincasUrl => _autFincasUrl ?? '';
  bool hasAutFincasUrl() => _autFincasUrl != null;

  // "autLlaves_url" field.
  String? _autLlavesUrl;
  String get autLlavesUrl => _autLlavesUrl ?? '';
  bool hasAutLlavesUrl() => _autLlavesUrl != null;

  // "autCambio_url" field.
  String? _autCambioUrl;
  String get autCambioUrl => _autCambioUrl ?? '';
  bool hasAutCambioUrl() => _autCambioUrl != null;

  // "fotosInventario_url" field.
  String? _fotosInventarioUrl;
  String get fotosInventarioUrl => _fotosInventarioUrl ?? '';
  bool hasFotosInventarioUrl() => _fotosInventarioUrl != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "estudio_url" field.
  String? _estudioUrl;
  String get estudioUrl => _estudioUrl ?? '';
  bool hasEstudioUrl() => _estudioUrl != null;

  void _initializeFields() {
    _cdhUrl = snapshotData['cdh_url'] as String?;
    _ceeUrl = snapshotData['cee_url'] as String?;
    _contratoUrl = snapshotData['contrato_url'] as String?;
    _fotosAnuncioUrl = snapshotData['fotosAnuncio_url'] as String?;
    _checklistUrl = snapshotData['checklist_url'] as String?;
    _autFincasUrl = snapshotData['autFincas_url'] as String?;
    _autLlavesUrl = snapshotData['autLlaves_url'] as String?;
    _autCambioUrl = snapshotData['autCambio_url'] as String?;
    _fotosInventarioUrl = snapshotData['fotosInventario_url'] as String?;
    _email = snapshotData['email'] as String?;
    _estudioUrl = snapshotData['estudio_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_documents');

  static Stream<UserDocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDocumentsRecord.fromSnapshot(s));

  static Future<UserDocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDocumentsRecord.fromSnapshot(s));

  static UserDocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDocumentsRecordData({
  String? cdhUrl,
  String? ceeUrl,
  String? contratoUrl,
  String? fotosAnuncioUrl,
  String? checklistUrl,
  String? autFincasUrl,
  String? autLlavesUrl,
  String? autCambioUrl,
  String? fotosInventarioUrl,
  String? email,
  String? estudioUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cdh_url': cdhUrl,
      'cee_url': ceeUrl,
      'contrato_url': contratoUrl,
      'fotosAnuncio_url': fotosAnuncioUrl,
      'checklist_url': checklistUrl,
      'autFincas_url': autFincasUrl,
      'autLlaves_url': autLlavesUrl,
      'autCambio_url': autCambioUrl,
      'fotosInventario_url': fotosInventarioUrl,
      'email': email,
      'estudio_url': estudioUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDocumentsRecordDocumentEquality
    implements Equality<UserDocumentsRecord> {
  const UserDocumentsRecordDocumentEquality();

  @override
  bool equals(UserDocumentsRecord? e1, UserDocumentsRecord? e2) {
    return e1?.cdhUrl == e2?.cdhUrl &&
        e1?.ceeUrl == e2?.ceeUrl &&
        e1?.contratoUrl == e2?.contratoUrl &&
        e1?.fotosAnuncioUrl == e2?.fotosAnuncioUrl &&
        e1?.checklistUrl == e2?.checklistUrl &&
        e1?.autFincasUrl == e2?.autFincasUrl &&
        e1?.autLlavesUrl == e2?.autLlavesUrl &&
        e1?.autCambioUrl == e2?.autCambioUrl &&
        e1?.fotosInventarioUrl == e2?.fotosInventarioUrl &&
        e1?.email == e2?.email &&
        e1?.estudioUrl == e2?.estudioUrl;
  }

  @override
  int hash(UserDocumentsRecord? e) => const ListEquality().hash([
        e?.cdhUrl,
        e?.ceeUrl,
        e?.contratoUrl,
        e?.fotosAnuncioUrl,
        e?.checklistUrl,
        e?.autFincasUrl,
        e?.autLlavesUrl,
        e?.autCambioUrl,
        e?.fotosInventarioUrl,
        e?.email,
        e?.estudioUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDocumentsRecord;
}
