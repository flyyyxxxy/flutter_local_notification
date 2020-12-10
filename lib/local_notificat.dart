import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notifications {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  init() {
    AndroidInitializationSettings initializationSettingsAndriod =
        AndroidInitializationSettings('ic_launcher');
    // IOSInitializationSettings initializationSettingsIos =
    //     IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndriod);

    this.flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification(String title, String body) async {
    AndroidNotificationDetails androidPlatformChanelSpecifics =
        AndroidNotificationDetails(
      'you chanel id',
      'chanel name',
      'channel Description',
      priority: Priority.max,
      importance: Importance.max,
    );

    // chanel IOs
    NotificationDetails platformChanelSpecigics = NotificationDetails(
        android: androidPlatformChanelSpecifics, iOS: null, macOS: null);

    await this
        .flutterLocalNotificationsPlugin
        .show(0, title, body, platformChanelSpecigics);
  }
}
