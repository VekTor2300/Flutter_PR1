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
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}