import 'package:flutter_application_8/domain/entity/role_entity.dart';

class Role extends RoleEntity{
  late int id;
  final String nameRole;
  Role({required this.nameRole}): super(nameRole: nameRole);

  Map<String,dynamic> toMap(){
    return{
      'nameRole': nameRole,
    };
  }

  factory Role.toFromMap(Map<String, dynamic> json){
    return Role(nameRole: json['nameRole']);
  }
  
}