import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/presentation/blocs/user/user_bloc.dart';

import '../../presentation/blocs/auth/auth_bloc.dart';
import '../router/router.dart';

class AuthRedirect extends StatefulWidget {
  final Widget child;

  const AuthRedirect({Key? key, required this.child}) : super(key: key);

  @override
  State<AuthRedirect> createState() => _AuthRedirectState();
}

class _AuthRedirectState extends State<AuthRedirect> {
  @override
  void initState() {
    _initUser(context.read<AuthBloc>().state);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          _initUser(state);
        },
        child: BlocListener<UserBloc, UserState>(
            listener: (context,state){
              _redirect(state.isAuthenticated);
            },
            child: widget.child));
  }

  void _initUser(AuthState state){
    if (state.isAuthenticated) {
      context.read<UserBloc>().add(UserEvent.fetchOrCreateUser(
          uid: state.user!.uid, email: state.user!.email!));
    } else {
      context.read<UserBloc>().add(const UserEvent.reset());
    }
  }

  void _redirect(bool isAuthenticated) {
    if (isAuthenticated) {
      router.go(AppRoutes.home);
    } else {
      router.go(AppRoutes.login);
    }
  }
}
