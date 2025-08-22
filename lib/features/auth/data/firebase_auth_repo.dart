import 'package:insta_clone/features/auth/domain/entities/app_user.dart';
import 'package:insta_clone/features/auth/domain/repositories/auth_repo.dart';

class FirebaseAuthRepo implements AuthRepo {
  @override
  Future<AppUser?> login(String email, password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AppUser?> register(String name, email, password) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<AppUser?> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }
}
