import 'package:flutter_application_8/domain/entity/user_entity.dart';

class User extends UserEntity {
  late int id;
  final String login;
  final String password;
  final int id_role;

  User({
    required this.login,
    required this.password,
     required this.id_role,
  }) : super(
          login: login,
          password: password,
          id_role: id_role,
        );

  Map<String, dynamic> toMap() {
    return {'login': login, 'password': password, 'id_role': id_role};
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      password: json['password'],
      id_role: json['id_role'],
    );
  }
}
