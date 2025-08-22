import 'package:firebase_auth/firebase_auth.dart';
import 'package:insta_clone/features/auth/domain/entities/app_user.dart';
import 'package:insta_clone/features/auth/domain/repositories/auth_repo.dart';

class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<AppUser?> signIn(String email, password) async {
    try {
      // attempt sign in
      UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // create user when signed in
      AppUser user = AppUser(
        uid: userCredential.user!.uid,
        email: email,
        name: '',
      );

      return user;
    } catch (e) {
      throw Exception('SignIn failed: $e');
    }
  }

  @override
  Future<AppUser?> createUser(String name, email, password) async {
    try {
      // attempt sign up
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // create user
      AppUser user = AppUser(
        uid: userCredential.user!.uid,
        email: email,
        name: name,
      );

      return user;
    } catch (e) {
      throw Exception('SignUp failed: $e');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      throw Exception('SignOut failed: $e');
    }
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    final currentUser = firebaseAuth.currentUser;

    if (currentUser == null) {
      return null;
    } else {
      return AppUser(
        uid: currentUser.uid,
        email: currentUser.email!,
        name: '',
      );
    }
  }
}
