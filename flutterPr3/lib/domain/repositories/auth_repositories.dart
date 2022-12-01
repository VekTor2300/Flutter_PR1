import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/domain/entity/role_entity.dart';

abstract class AuthRepositories {
  // Название таблицы
  String get table;

  // Авторизация пользователя
  Future<Either<String, RoleEnum>> signIn(String login, String password);

  // Регистрация пользователя
  Future<Either<String, bool>> signUp(String login, String password);
}
