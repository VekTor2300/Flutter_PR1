import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'signIn.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => UserState();
}

class UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Awesome AppBar')),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        ),
      body: Container(
        child: Column(
          children: [
            const Text(
                  "Пользователь",
                ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignIn(),
                  ),
                );
              },
              style:  ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300)),
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}