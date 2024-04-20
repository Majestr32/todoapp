import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoapp/app/consts/firestore.dart';
import 'package:todoapp/app/exception/exception.dart';
import 'package:todoapp/app/exception/firebase_exception_mapper.dart';
import 'package:todoapp/domain/entities/user/user.dart';
import 'package:todoapp/domain/repositories/user/user_repository_contract.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseFirestore _db;

  @override
  Future<UserEntity> createUser({required String uid, required String email}) async {
    try{
      final doc = _db.collection(AppFirestoreCollections.users).doc(uid);
      await doc.set({
        'id': uid,
        'email': email,
        'created_at': FieldValue.serverTimestamp()
      });
      final snapshot = await doc.get();
      return UserEntity.fromJson(snapshot.data()!);
    }on FirebaseException catch(e){
      throw FirebaseExceptionMapper(e).toAppException();
    }catch(e){
      throw const AppException(message: "Failed to create user");
    }
  }

  @override
  Future<UserEntity?> getUserOrNull({required String uid}) async {
    try{
      final snapshot = await _db
          .collection(AppFirestoreCollections.users)
          .doc(uid)
          .get();
      if(!snapshot.exists) return null;
      return UserEntity.fromJson(snapshot.data()!);
    }on FirebaseException catch(e){
      throw FirebaseExceptionMapper(e).toAppException();
    }catch(e){
      throw const AppException(message: "Failed to get user by uid");
    }
  }

  @override
  Future<UserEntity> getOrCreateUser({required String uid, required String email}) async{
    UserEntity? user = await getUserOrNull(uid: uid);
    user ??= await createUser(email: email, uid: uid);
    return user;
  }

  const UserRepositoryImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}