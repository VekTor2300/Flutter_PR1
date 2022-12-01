import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/signIn.dart';

import '../data/repositories/auth_repositories_impl.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                            return "Логин должен содержать минимум латинскую букву";
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
                        var user = new AuthRepositoryImpl().signUp(
                          controllerLogin.text,
                          controllerPassword.text,
                        );
                        user.then(
                          (value) {
                            if (value.isRight()) {
                              AuthRepositoryImpl().signUp(
                                controllerLogin.text,
                                controllerPassword.text,
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignIn(),
                                ),
                              );
                            } else {
                              final snackBar = const SnackBar(
                                content: Text('Ошибка'),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                        );
                      },
                      child: const Text("Зарегистрироваться"),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
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
            ),
          ],
        ),
      ),
    );
  }
}