class EmployeeEntity{
  late int id;
  final String surname;
  final String name;
  final String middleName;
  final String login;
  final String password;
  final String numberPhone;
  final int id_post;  
  final int id_role;

 EmployeeEntity({
  required this.surname,
  required this.name,
  required this.middleName,
  required this.login,
  required this.password,
  required this.numberPhone,
  required this.id_post,
  required this.id_role,
  });
}