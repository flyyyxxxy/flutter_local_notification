import 'package:firebase_message/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class MessageFB {
  void initMessageFB() {
    final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
      print('OnMessage: $message');
      var notification = message['notification'];
      noti.showNotification(notification['title'], notification['body']);
    });

    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true));
  }
}

MessageFB mfb = MessageFB();
