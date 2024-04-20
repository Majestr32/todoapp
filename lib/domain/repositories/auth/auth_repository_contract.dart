import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository{
  Stream<User?> get currentUser;
  Future<void> signInWithEmailAndPassword({required String email, required String password});
  Future<void> signUpWithEmailAndPassword({required String email, required String password});
  Future<void> logout();
}