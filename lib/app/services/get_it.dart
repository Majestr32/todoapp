import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:todoapp/domain/repositories/auth/auth_repository_contract.dart';
import 'package:todoapp/domain/repositories/auth/auth_repository_impl.dart';
import 'package:todoapp/domain/repositories/todo/todo_repository_contract.dart';
import 'package:todoapp/domain/repositories/todo/todo_repository_impl.dart';
import 'package:todoapp/domain/repositories/user/user_repository_contract.dart';
import 'package:todoapp/domain/repositories/user/user_repository_impl.dart';
import 'package:todoapp/presentation/blocs/add_todo/add_todo_bloc.dart';
import 'package:todoapp/presentation/blocs/auth/auth_bloc.dart';
import 'package:todoapp/presentation/blocs/delete_todo/delete_todo_bloc.dart';
import 'package:todoapp/presentation/blocs/edit_todo/edit_todo_bloc.dart';
import 'package:todoapp/presentation/blocs/sign_in/sign_in_bloc.dart';
import 'package:todoapp/presentation/blocs/sign_up/sign_up_bloc.dart';
import 'package:todoapp/presentation/blocs/todos/todos_bloc.dart';
import 'package:todoapp/presentation/blocs/user/user_bloc.dart';

final it = GetIt.instance;

void setup() {
  it.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(auth: FirebaseAuth.instance));
  it.registerSingleton<UserRepository>(
      UserRepositoryImpl(db: FirebaseFirestore.instance));
  it.registerSingleton<TodoRepository>(TodoRepositoryImpl(db: FirebaseFirestore.instance));

  it.registerSingleton<AuthBloc>(AuthBloc(authRepository: it()));
  it.registerSingleton<UserBloc>(UserBloc(userRepository: it()));
  it.registerSingleton<TodosBloc>(TodosBloc(todoRepository: it()));

  it.registerFactory(() => SignInBloc(authRepository: it()));
  it.registerFactory(() => SignUpBloc(authRepository: it()));
  it.registerFactory(() => AddTodoBloc(todoRepository: it()));
  it.registerFactory(() => EditTodoBloc(todoRepository: it()));
  it.registerFactory(() => DeleteTodoBloc(todoRepository: it()));
}
