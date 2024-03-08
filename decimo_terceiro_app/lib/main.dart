import 'package:decimo_terceiro_app/push_notification.dart';
import 'package:decimo_terceiro_app/screens/home_screen.dart';
import 'package:decimo_terceiro_app/screens/message_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> onBackgroundMessage(RemoteMessage message) async {
  print('TESTANDO');

  if (message.notification != null) {
    print('Message handled in the background!');
    print('Title: ${message.notification!.title}');
    print('Body: ${message.notification!.body}');
  }
}

void onMessageOpenedApp(RemoteMessage message) {
  if (message.notification != null) {
    navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MessageScreen(
              title: message.notification!.title ?? ' - ',
              description: message.notification!.body ?? ' - '
          );
        },
      ),
    );
  }
}

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  PushNotification.init();

  FirebaseMessaging.onMessageOpenedApp.listen(onMessageOpenedApp);

  FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);

  runApp(MaterialApp(
    navigatorKey: navigatorKey,
    home: HomeScreen(),
  ));
}

