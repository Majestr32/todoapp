import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/strings.dart';
import 'package:todoapp/app/consts/text_styles.dart';
import 'package:todoapp/app/router/router.dart';
import 'package:todoapp/presentation/blocs/auth/auth_bloc.dart';
import 'package:todoapp/presentation/blocs/sign_in/sign_in_bloc.dart';
import 'package:todoapp/presentation/common_widgets/horizontal_screen_padding.dart';
import 'package:todoapp/presentation/screens/auth/widgets/email_textfield.dart';
import 'package:todoapp/presentation/screens/auth/widgets/password_textfield.dart';

import '../../../app/services/get_it.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _buttonPressed = false;

  final _formKey = GlobalKey<FormState>();

  final _signInBloc = it<SignInBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: _signInBloc,
      builder: (context, state) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: HorizontalScreenPadding(
              child: Form(
                key: _formKey,
                autovalidateMode: _buttonPressed
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 19,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: _buildLoginTitle()),
                    const Spacer(
                      flex: 2,
                    ),
                    EmailTextField(
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    PasswordTextField(
                      controller: _passwordController,
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    _buildNoAccount(context),
                    const SizedBox(
                      height: 26,
                    ),
                    SizedBox(
                        width: double.infinity, child: _buildSignInButton()),
                    const SizedBox(
                      height: 26,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginTitle() {
    return Text(
      AppStrings.login,
      style: AppTextStyles.robotoMedium20,
    );
  }

  Widget _buildNoAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAnAccount,
          style: AppTextStyles.robotoMedium16,
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          onTap: () {
            context.go(AppRoutes.register);
          },
          child: Text(
            AppStrings.signUp,
            style: AppTextStyles.robotoMedium16MainAccent,
          ),
        ),
      ],
    );
  }

  Widget _buildSignInButton() {
    return BlocBuilder<SignInBloc,SignInState>(
      bloc: _signInBloc,
      builder: (context,state) => SizedBox(
          height: 46,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _buttonPressed = true;
              });
              final valid = _formKey.currentState!.validate();
              if (!valid) return;
              _signInBloc.add(SignInEvent.signIn(
                  email: _emailController.text,
                  password: _passwordController.text));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainAccent,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: state.isLoading ? const Center(child: CircularProgressIndicator(),) : Text(
              AppStrings.signIn,
              style: AppTextStyles.robotoMedium16White,
            ),
          )),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
