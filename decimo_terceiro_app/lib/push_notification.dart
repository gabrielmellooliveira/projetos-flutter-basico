import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotification {
  static Future<void> init() async {
    // Inicializar o Firebase Cloud Messaging
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // Solicitar permissão para receber notificações
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      sound: true
    );

    // Obter o token do dispositivo
    String? token = await messaging.getToken();
    print('Token: $token');
  }
}