import '../../entities/user/user.dart';

abstract class UserRepository{
  Future<UserEntity> createUser({required String uid, required String email});
  Future<UserEntity> getOrCreateUser({required String uid, required String email});
  Future<UserEntity?> getUserOrNull({required String uid});
}