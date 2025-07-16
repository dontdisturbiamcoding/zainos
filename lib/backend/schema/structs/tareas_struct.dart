// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// estructura de datos dónde se guardarán las tareas pendientes de cada
/// usuario para actualizar su progreso
///
class TareasStruct extends FFFirebaseStruct {
  TareasStruct({
    bool? dni,
    bool? escriturasNotaSimple,
    bool? certificadoEnergetico,
    bool? cedulaHabitabilidad,
    bool? fotografiaPlano,
    bool? ite,
    bool? fincas,
    bool? visitando,
    bool? ofertas,
    bool? arras,
    bool? notaria,
    bool? contrato,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dni = dni,
        _escriturasNotaSimple = escriturasNotaSimple,
        _certificadoEnergetico = certificadoEnergetico,
        _cedulaHabitabilidad = cedulaHabitabilidad,
        _fotografiaPlano = fotografiaPlano,
        _ite = ite,
        _fincas = fincas,
        _visitando = visitando,
        _ofertas = ofertas,
        _arras = arras,
        _notaria = notaria,
        _contrato = contrato,
        super(firestoreUtilData);

  // "dni" field.
  bool? _dni;
  bool get dni => _dni ?? false;
  set dni(bool? val) => _dni = val;

  bool hasDni() => _dni != null;

  // "escrituras-notaSimple" field.
  bool? _escriturasNotaSimple;
  bool get escriturasNotaSimple => _escriturasNotaSimple ?? false;
  set escriturasNotaSimple(bool? val) => _escriturasNotaSimple = val;

  bool hasEscriturasNotaSimple() => _escriturasNotaSimple != null;

  // "certificadoEnergetico" field.
  bool? _certificadoEnergetico;
  bool get certificadoEnergetico => _certificadoEnergetico ?? false;
  set certificadoEnergetico(bool? val) => _certificadoEnergetico = val;

  bool hasCertificadoEnergetico() => _certificadoEnergetico != null;

  // "cedulaHabitabilidad" field.
  bool? _cedulaHabitabilidad;
  bool get cedulaHabitabilidad => _cedulaHabitabilidad ?? false;
  set cedulaHabitabilidad(bool? val) => _cedulaHabitabilidad = val;

  bool hasCedulaHabitabilidad() => _cedulaHabitabilidad != null;

  // "fotografia-plano" field.
  bool? _fotografiaPlano;
  bool get fotografiaPlano => _fotografiaPlano ?? false;
  set fotografiaPlano(bool? val) => _fotografiaPlano = val;

  bool hasFotografiaPlano() => _fotografiaPlano != null;

  // "ite" field.
  bool? _ite;
  bool get ite => _ite ?? false;
  set ite(bool? val) => _ite = val;

  bool hasIte() => _ite != null;

  // "fincas" field.
  bool? _fincas;
  bool get fincas => _fincas ?? false;
  set fincas(bool? val) => _fincas = val;

  bool hasFincas() => _fincas != null;

  // "visitando" field.
  bool? _visitando;
  bool get visitando => _visitando ?? false;
  set visitando(bool? val) => _visitando = val;

  bool hasVisitando() => _visitando != null;

  // "ofertas" field.
  bool? _ofertas;
  bool get ofertas => _ofertas ?? false;
  set ofertas(bool? val) => _ofertas = val;

  bool hasOfertas() => _ofertas != null;

  // "arras" field.
  bool? _arras;
  bool get arras => _arras ?? false;
  set arras(bool? val) => _arras = val;

  bool hasArras() => _arras != null;

  // "notaria" field.
  bool? _notaria;
  bool get notaria => _notaria ?? false;
  set notaria(bool? val) => _notaria = val;

  bool hasNotaria() => _notaria != null;

  // "contrato" field.
  bool? _contrato;
  bool get contrato => _contrato ?? false;
  set contrato(bool? val) => _contrato = val;

  bool hasContrato() => _contrato != null;

  static TareasStruct fromMap(Map<String, dynamic> data) => TareasStruct(
        dni: data['dni'] as bool?,
        escriturasNotaSimple: data['escrituras-notaSimple'] as bool?,
        certificadoEnergetico: data['certificadoEnergetico'] as bool?,
        cedulaHabitabilidad: data['cedulaHabitabilidad'] as bool?,
        fotografiaPlano: data['fotografia-plano'] as bool?,
        ite: data['ite'] as bool?,
        fincas: data['fincas'] as bool?,
        visitando: data['visitando'] as bool?,
        ofertas: data['ofertas'] as bool?,
        arras: data['arras'] as bool?,
        notaria: data['notaria'] as bool?,
        contrato: data['contrato'] as bool?,
      );

  static TareasStruct? maybeFromMap(dynamic data) =>
      data is Map ? TareasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'dni': _dni,
        'escrituras-notaSimple': _escriturasNotaSimple,
        'certificadoEnergetico': _certificadoEnergetico,
        'cedulaHabitabilidad': _cedulaHabitabilidad,
        'fotografia-plano': _fotografiaPlano,
        'ite': _ite,
        'fincas': _fincas,
        'visitando': _visitando,
        'ofertas': _ofertas,
        'arras': _arras,
        'notaria': _notaria,
        'contrato': _contrato,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dni': serializeParam(
          _dni,
          ParamType.bool,
        ),
        'escrituras-notaSimple': serializeParam(
          _escriturasNotaSimple,
          ParamType.bool,
        ),
        'certificadoEnergetico': serializeParam(
          _certificadoEnergetico,
          ParamType.bool,
        ),
        'cedulaHabitabilidad': serializeParam(
          _cedulaHabitabilidad,
          ParamType.bool,
        ),
        'fotografia-plano': serializeParam(
          _fotografiaPlano,
          ParamType.bool,
        ),
        'ite': serializeParam(
          _ite,
          ParamType.bool,
        ),
        'fincas': serializeParam(
          _fincas,
          ParamType.bool,
        ),
        'visitando': serializeParam(
          _visitando,
          ParamType.bool,
        ),
        'ofertas': serializeParam(
          _ofertas,
          ParamType.bool,
        ),
        'arras': serializeParam(
          _arras,
          ParamType.bool,
        ),
        'notaria': serializeParam(
          _notaria,
          ParamType.bool,
        ),
        'contrato': serializeParam(
          _contrato,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TareasStruct fromSerializableMap(Map<String, dynamic> data) =>
      TareasStruct(
        dni: deserializeParam(
          data['dni'],
          ParamType.bool,
          false,
        ),
        escriturasNotaSimple: deserializeParam(
          data['escrituras-notaSimple'],
          ParamType.bool,
          false,
        ),
        certificadoEnergetico: deserializeParam(
          data['certificadoEnergetico'],
          ParamType.bool,
          false,
        ),
        cedulaHabitabilidad: deserializeParam(
          data['cedulaHabitabilidad'],
          ParamType.bool,
          false,
        ),
        fotografiaPlano: deserializeParam(
          data['fotografia-plano'],
          ParamType.bool,
          false,
        ),
        ite: deserializeParam(
          data['ite'],
          ParamType.bool,
          false,
        ),
        fincas: deserializeParam(
          data['fincas'],
          ParamType.bool,
          false,
        ),
        visitando: deserializeParam(
          data['visitando'],
          ParamType.bool,
          false,
        ),
        ofertas: deserializeParam(
          data['ofertas'],
          ParamType.bool,
          false,
        ),
        arras: deserializeParam(
          data['arras'],
          ParamType.bool,
          false,
        ),
        notaria: deserializeParam(
          data['notaria'],
          ParamType.bool,
          false,
        ),
        contrato: deserializeParam(
          data['contrato'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TareasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TareasStruct &&
        dni == other.dni &&
        escriturasNotaSimple == other.escriturasNotaSimple &&
        certificadoEnergetico == other.certificadoEnergetico &&
        cedulaHabitabilidad == other.cedulaHabitabilidad &&
        fotografiaPlano == other.fotografiaPlano &&
        ite == other.ite &&
        fincas == other.fincas &&
        visitando == other.visitando &&
        ofertas == other.ofertas &&
        arras == other.arras &&
        notaria == other.notaria &&
        contrato == other.contrato;
  }

  @override
  int get hashCode => const ListEquality().hash([
        dni,
        escriturasNotaSimple,
        certificadoEnergetico,
        cedulaHabitabilidad,
        fotografiaPlano,
        ite,
        fincas,
        visitando,
        ofertas,
        arras,
        notaria,
        contrato
      ]);
}

TareasStruct createTareasStruct({
  bool? dni,
  bool? escriturasNotaSimple,
  bool? certificadoEnergetico,
  bool? cedulaHabitabilidad,
  bool? fotografiaPlano,
  bool? ite,
  bool? fincas,
  bool? visitando,
  bool? ofertas,
  bool? arras,
  bool? notaria,
  bool? contrato,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TareasStruct(
      dni: dni,
      escriturasNotaSimple: escriturasNotaSimple,
      certificadoEnergetico: certificadoEnergetico,
      cedulaHabitabilidad: cedulaHabitabilidad,
      fotografiaPlano: fotografiaPlano,
      ite: ite,
      fincas: fincas,
      visitando: visitando,
      ofertas: ofertas,
      arras: arras,
      notaria: notaria,
      contrato: contrato,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TareasStruct? updateTareasStruct(
  TareasStruct? tareas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tareas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTareasStructData(
  Map<String, dynamic> firestoreData,
  TareasStruct? tareas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tareas == null) {
    return;
  }
  if (tareas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tareas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tareasData = getTareasFirestoreData(tareas, forFieldValue);
  final nestedData = tareasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tareas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTareasFirestoreData(
  TareasStruct? tareas, [
  bool forFieldValue = false,
]) {
  if (tareas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tareas.toMap());

  // Add any Firestore field values
  tareas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTareasListFirestoreData(
  List<TareasStruct>? tareass,
) =>
    tareass?.map((e) => getTareasFirestoreData(e, true)).toList() ?? [];
