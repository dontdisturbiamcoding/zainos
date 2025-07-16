import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _vistoIntro = prefs.getBool('ff_vistoIntro') ?? _vistoIntro;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// Revisa si es la primera vez que se abre la app y muestro o no el carrusel
  bool _vistoIntro = false;
  bool get vistoIntro => _vistoIntro;
  set vistoIntro(bool value) {
    _vistoIntro = value;
    prefs.setBool('ff_vistoIntro', value);
  }

  /// Variable para saber si ha aceptado los terminos y condiciones antes de
  /// entrar
  bool _aceptTC = true;
  bool get aceptTC => _aceptTC;
  set aceptTC(bool value) {
    _aceptTC = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
