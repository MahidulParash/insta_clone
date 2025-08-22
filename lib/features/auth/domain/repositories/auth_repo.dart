import 'package:insta_clone/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo {
  // LOGIN
  Future<AppUser?> signIn(
    String email,
    password,
  );
  //REGISTER
  Future<AppUser?> createUser(
    String name,
    email,
    password,
  );
  // LOGOUT
  Future<void> signOut();
  // CURRENT USER
  Future<AppUser?> getCurrentUser();
}
