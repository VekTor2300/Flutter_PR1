import 'package:flutter_application_8/domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity{
  late int id;
  final String surname;
  final String name;
  final String middleName;
  final String login;
  final String password;
  final String numberPhone;
  final int id_post;
  final int id_role;

   Employee({
  required this.surname,
  required this.name,
  required this.middleName,
  required this.login,
  required this.password,
  required this.numberPhone,
  required this.id_post,
  required this.id_role
  }):super(
    surname: surname,
    name: name,
    middleName: middleName,
    login: login,
    password: password,
    numberPhone: numberPhone,
    id_post: id_post,
    id_role: id_role
  );

  Map<String, dynamic> toMap(){
    return{
      'surname': surname,
      'name': name,
      'middleName': middleName,
      'login': login,
      'password': password,
      'numberPhone': numberPhone,
      'id_post': id_post,
      'id_role': id_role
    };
  }

  factory Employee.toFromMap(Map<String, dynamic> json){
      return Employee(
        surname: json['surname'],
        name: json['name'],
        middleName: json['middleName'],
        login: json['login'],
        password: json['password'],
        numberPhone: json['numberPhone'],
        id_post: json['id_post'],
        id_role: json['id_role']);
    }
}