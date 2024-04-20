import 'package:todoapp/app/exception/firebase_exception_mapper.dart';
import 'package:todoapp/domain/repositories/auth/auth_repository_contract.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth _auth;

  @override
  Stream<User?> get currentUser => _auth.userChanges();

  @override
  Future<void> signInWithEmailAndPassword({required String email, required String password}) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      throw FirebaseExceptionMapper(e).toAppException();
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword({required String email, required String password}) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch(e){
      throw FirebaseExceptionMapper(e).toAppException();
    }
  }

  @override
  Future<void> logout() {
    return _auth.signOut();
  }

  const AuthRepositoryImpl({
    required FirebaseAuth auth,
  }) : _auth = auth;
}