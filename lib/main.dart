import 'package:firebase_message/local_notificat.dart';
import 'package:firebase_message/screen_message.dart';
import 'package:flutter/material.dart';

final Notifications noti = Notifications();
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    noti.init();
    mfb.initMessageFB();
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              
            },
            child: Icon(Icons.notifications),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Firebase messaging',
              style: TextStyle(color: Colors.black54),
            ),
            centerTitle: true,
          ),
          body: Container(
            child: Center(
              child: Text('Test'),
            ),
          )),
    );
  }
}
