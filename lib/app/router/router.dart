import 'package:go_router/go_router.dart';
import 'package:todoapp/domain/entities/todo/todo.dart';
import 'package:todoapp/presentation/screens/auth/login.dart';
import 'package:todoapp/presentation/screens/auth/register.dart';
import 'package:todoapp/presentation/screens/home/add_todo.dart';
import 'package:todoapp/presentation/screens/home/edit_todo.dart';
import 'package:todoapp/presentation/screens/home/home.dart';
import 'package:todoapp/presentation/screens/home/view_todo.dart';
import 'package:todoapp/presentation/screens/splash/splash.dart';

class AppRoutes{
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String addTodo = '/addTodo';
  static const String splash = '/splash';
  ///Requires TodoEntity as extra
  static const String view = '/view';
  ///Requires TodoEntity as extra
  ///If successfully edited, pops with result of new TodoEntity
  static const String edit = '/edit';
}
final GoRouter router = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(path: AppRoutes.login, builder: (_,__) => const LoginScreen()),
    GoRoute(path: AppRoutes.register, builder: (_,__) => const RegisterScreen()),
    GoRoute(path: AppRoutes.home, builder: (_,__) => const HomeScreen()),
    GoRoute(path: AppRoutes.addTodo, builder: (_,__) => const AddTodoScreen()),
    GoRoute(path: AppRoutes.splash, builder: (_,__) => const SplashScreen()),
    GoRoute(path: AppRoutes.view, builder: (_,state) => ViewTodoScreen(todo: state.extra as TodoEntity)),
    GoRoute(path: AppRoutes.edit, builder: (_,state) => EditTodoScreen(todo: state.extra as TodoEntity))
  ],
);