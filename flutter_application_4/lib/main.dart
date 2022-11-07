import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen1.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: '01', 
        home: const Screen(),
      );
  }
}