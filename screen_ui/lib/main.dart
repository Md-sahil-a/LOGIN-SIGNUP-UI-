import 'package:flutter/material.dart';
import 'ui.dart';
import 'Login.dart';
import 'forgot.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Practise(),
        '/second': (context) => Create(),
        '/third': (context) => SIGNUP(),
      },
    );
  }
}
