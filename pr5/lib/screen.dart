import 'package:flutter/material.dart';
import 'package:pr5/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;

class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key, required this.text, required this.brightness});

  final Brightness brightness;
  final String text;

  @override
  State<ScreenPage> createState() => ScreenPageState();
}

class ScreenPageState extends State<ScreenPage> {
  bool brightnessBool = true;

  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void clearSharedPreferences() async {
    await sharedPreferences!.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: widget.brightness,
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.text),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            clearSharedPreferences();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyApp(),
              ),
            );
          },
          tooltip: 'Назад',
          child: const Icon(Icons.restart_alt),
        ),
      ),
    );
  }
}
