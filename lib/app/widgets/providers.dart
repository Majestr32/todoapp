import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/app/services/get_it.dart';
import 'package:todoapp/presentation/blocs/auth/auth_bloc.dart';
import 'package:todoapp/presentation/blocs/user/user_bloc.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => it<AuthBloc>(), lazy: false,),
          BlocProvider(create: (context) => it<UserBloc>(), lazy: false,),
        ],
        child: child);
  }
}
