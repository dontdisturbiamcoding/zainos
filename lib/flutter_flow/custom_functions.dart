import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? newCustomFunction(
  String? nombreAgente,
  String? telefonoAgente,
  String? emailAgente,
) {
  {
    // Esta función construye el mensaje final usando los argumentos.
    // El carácter '\n' aquí SÍ se interpreta como un salto de línea.
    // Usamos '??' para proporcionar un valor por defecto si los argumentos son nulos.
    final nombre = nombreAgente ?? 'Nombre no disponible';
    final telefono = telefonoAgente ?? 'Teléfono no disponible';
    final email = emailAgente ?? 'Email no disponible';

    return '¡Te recomiendo a mi asesor inmobiliario de Zaino\'s Capital!\n\n' +
        'Nombre: ' +
        nombre +
        '\n' +
        'Teléfono: ' +
        telefono +
        '\n' +
        'Email: ' +
        email +
        '\n' +
        '\n' +
        'www.zainoscapital.com';
  }
}
