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

import '/auth/firebase_auth/auth_util.dart'; // Import para currentUser

// Importa los paquetes necesarios de Firebase.
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future newCustomAction() async {
  // Obtiene la instancia del usuario autenticado actual.
  // 'currentUser' está disponible globalmente en FlutterFlow.
  final user = currentUser;
  if (user == null) {
    // Si no hay un usuario logueado, no hace nada.
    print('Usuario no autenticado, no se puede actualizar el token FCM.');
    return;
  }

  // Obtiene el token de notificación del dispositivo.
  final fcmToken = await FirebaseMessaging.instance.getToken();
  if (fcmToken == null) {
    // Si no se puede obtener el token, no hace nada.
    print('No se pudo obtener el token FCM.');
    return;
  }

  // Prepara los datos para actualizar en la base de datos.
  final fcmTokenField = <String, dynamic>{
    'fcm_token': fcmToken,
  };

  // Actualiza el documento del usuario en Firestore con el nuevo token.
  // Asegúrate de que tu colección de usuarios se llama 'user_data'.
  await FirebaseFirestore.instance
      .collection('user_data')
      .doc(user.uid)
      .set(fcmTokenField, SetOptions(merge: true));

  print('Token FCM actualizado con éxito para el usuario: ${user.uid}');
}
