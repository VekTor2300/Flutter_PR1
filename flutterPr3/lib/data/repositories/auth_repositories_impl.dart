import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../core/db/data_base_helper.dart';
import '../../domain/repositories/auth_repositories.dart';
import '../../domain/entity/role_entity.dart';

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';

import '../model/user.dart';

class AuthRepositoryImpl implements AuthRepositories {
  final _db = DataBaseHelper.instance.database;

  String table = DataBaseRequest.tableUsers;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
     try {
      var account = await _db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );
      if (account.isEmpty) {
        return const Left('Такого пользователя нет');
      }
      if (account.first['password'] !=
          md5.convert(utf8.encode(password)).toString()) {
        return const Left('Неверный пароль');
      }
      return Right(RoleEnum.values[(account.first['id_role'] as int) - 1]);
    } on DatabaseException catch (error) {
      return Left(error.result.toString());
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password) async{
     try {
      var account = await _db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );
      if (account.isNotEmpty) {
        return const Left('Логин уже занят');
      }
      _db.insert(
          table,
          User(
                  login: login,
                  password: md5.convert(utf8.encode(password)).toString(),
                  id_role: RoleEnum.user.id)
              .toMap());
      return const Right(true);
    } on DatabaseException catch (error) {
      return const Left("Ошибка");
    }
  }
}
