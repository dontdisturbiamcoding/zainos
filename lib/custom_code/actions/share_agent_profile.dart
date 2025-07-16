// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:share_plus/share_plus.dart';

Future<void> shareAgentProfile(
  String nombreAgente,
  String telefonoAgente,
  String emailAgente,
  String imageUrl,
) async {
  // Construir el mensaje de texto
  final String textToShare =
      '¡Te recomiendo a mi asesor inmobiliario de Zainos Capital!\n\n'
      'Nombre: $nombreAgente\n'
      'Teléfono: $telefonoAgente\n'
      'Email: $emailAgente\n'
      'www.zainoscapital.com';

  try {
    // Descargar la imagen desde la URL
    final http.Response response = await http.get(Uri.parse(imageUrl));
    final bytes = response.bodyBytes;

    // Guardar la imagen en un archivo temporal en el dispositivo
    final Directory tempDir = await getTemporaryDirectory();
    final String tempPath = tempDir.path;
    final File file = File('$tempPath/agent_profile.jpg');
    await file.writeAsBytes(bytes);

    // Compartir el texto y la imagen guardada
    await Share.shareXFiles(
      [XFile(file.path)],
      text: textToShare,
      subject: 'Contacto de Asesor Inmobiliario',
    );
  } catch (e) {
    // Si hay un error (ej. la imagen no se puede descargar), comparte solo el texto
    print('Error al descargar la imagen: $e');
    await Share.share(
      textToShare,
      subject: 'Contacto de Asesor Inmobiliario',
    );
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
