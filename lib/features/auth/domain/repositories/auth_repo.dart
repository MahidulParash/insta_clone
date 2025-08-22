import 'package:insta_clone/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo {
  // LOGIN
  Future<AppUser?> login(
    String email,
    password,
  );
  //REGISTER
  Future<AppUser?> register(
    String name,
    email,
    password,
  );
  // LOGOUT
  Future<void> logout();
  // CURRENT USER
  Future<AppUser?> getCurrentUser();
}
