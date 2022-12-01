import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/core/usecases/auth.dart';
import 'package:flutter_application_8/domain/entity/role_entity.dart';
import 'package:flutter_application_8/domain/repositories/auth_repositories.dart';

class Auth implements AuthUserCase<String, AuthParams> {
  final AuthRepositories _authRepository;

  Auth(this._authRepository);

  @override
  Future<Either<String, bool>> signUp(AuthParams params) {
    return _authRepository.signUp(params.login, params.password);
  }
  
  @override
  Future<Either<String, RoleEnum>> signIn(AuthParams params) {
    return _authRepository.signIn(params.login, params.password);
  }
}

class AuthParams {
  final String login;
  final String password;

  AuthParams({
    required this.login,
    required this.password,
  });
}
