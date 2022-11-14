import 'package:flutter/cupertino.dart';

class RoleEntity{
  late int id;
  final String nameRole;

  RoleEntity({required this.nameRole});
}

enum RoleEnum{admin, user}