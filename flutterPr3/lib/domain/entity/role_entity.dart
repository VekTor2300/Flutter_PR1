class RoleEntity {
  late int id;
  final String role;

  RoleEntity({
    required this.role,
  });
}

enum RoleEnum {
  admin(id: 1, name: 'Администратор'),
  user(id: 2, name: 'Пользователь'),
  emptyRole(id: 0, name: 'без роли');

  const RoleEnum({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;
}
