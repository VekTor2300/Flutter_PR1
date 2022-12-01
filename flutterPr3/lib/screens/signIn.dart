import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/signUp.dart';
import 'package:flutter_application_8/screens/user.dart';

import '../data/repositories/auth_repositories_impl.dart';
import '../domain/entity/role_entity.dart';
import 'admin.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Center(
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controllerLogin,
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Логин не должен быть пустым";
                          }
                          if (value.length < 3) {
                            return "Логин должен быть от 3 символов";
                          }
                          if (value.length >= 15) {
                            return "Логин должен быть до 15 символов";
                          }
                          if (!(value.contains(RegExp(r'[A-Z]')) || value.contains(RegExp(r'[a-z]')))) {
                            return "Логин должен содержать минимум одну латинскую букву";
                          }
                          if (!value.contains(RegExp(r'[0-9]'))) {
                            return "Логин должен иметь хотя бы одну цифру";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Логин",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      ),
                      TextFormField(
                        controller: controllerPassword,
                        obscureText: true,
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return "Пароль не должен быть пустым";
                          }
                          if (value.length < 3) {
                            return "Пароль должен быть от 3 символов";
                          }
                          if (value.length >= 15) {
                            return "Пароль должен быть до 15 символов";
                          }
                          if (!(value.contains(RegExp(r'[A-Z]')) || value.contains(RegExp(r'[a-z]')))) {
                            return "Пароль должен содержать минимум одну латинскую букву";
                          }
                          if (!value.contains(RegExp(r'[0-9]'))) {
                            return "Пароль должен иметь хотя бы одну цифру";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Пароль",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (!key.currentState!.validate()) return;
                        final snackBar = SnackBar(
                          content: Text('Ошибка'),
                        );
                        var user = new AuthRepositoryImpl().signIn(
                          controllerLogin.text,
                          controllerPassword.text,
                        );
                        user.then((value) {
                          if (value.isRight()) {
                            RoleEnum roleEnum =
                                value.getOrElse(() => RoleEnum.emptyRole);
                            switch (roleEnum) {
                              case RoleEnum.admin:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Admin()));
                                break;
                              case RoleEnum.user:
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const User()));
                                break;
                              case RoleEnum.emptyRole:
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                                break;
                            }
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
                      },
                      style:  ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300)),
                      child: const Text("Вход"),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      style:  ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300)),
                      child: const Text("Регистрация"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}