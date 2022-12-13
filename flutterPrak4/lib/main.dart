import 'package:flutter/material.dart';
import 'package:flutterPrak4/views/counter_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Theme.of(context)
          .copyWith(scaffoldBackgroundColor: Colors.white),
      darkTheme: Theme.of(context)
          .copyWith(scaffoldBackgroundColor: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }
}
