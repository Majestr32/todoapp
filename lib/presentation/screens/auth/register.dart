import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/strings.dart';
import 'package:todoapp/app/consts/text_styles.dart';
import 'package:todoapp/app/router/router.dart';
import 'package:todoapp/app/services/get_it.dart';
import 'package:todoapp/presentation/blocs/sign_in/sign_in_bloc.dart';
import 'package:todoapp/presentation/blocs/sign_up/sign_up_bloc.dart';
import 'package:todoapp/presentation/common_widgets/horizontal_screen_padding.dart';
import 'package:todoapp/presentation/screens/auth/widgets/confirm_password_textfield.dart';
import 'package:todoapp/presentation/screens/auth/widgets/email_textfield.dart';
import 'package:todoapp/presentation/screens/auth/widgets/password_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _buttonPressed = false;

  final _formKey = GlobalKey<FormState>();

  final _signUpBloc = it<SignUpBloc>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                      child: _buildRegisterTitle()),
                  const Spacer(),
                  EmailTextField(
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  PasswordTextField(
                    controller: _passwordController,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  ConfirmPasswordTextField(
                    controller: _confirmPasswordController,
                    originalPasswordController: _passwordController,
                  ),
                  const Spacer(),
                  _buildHaveAnAccount(context),
                  const SizedBox(
                    height: 26,
                  ),
                  SizedBox(width: double.infinity, child: _buildSignUpButton()),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterTitle() {
    return Text(
      AppStrings.register,
      style: AppTextStyles.robotoMedium20,
    );
  }

  Widget _buildHaveAnAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.haveAnAccount,
          style: AppTextStyles.robotoMedium16,
        ),
        const SizedBox(
          width: 4,
        ),
        GestureDetector(
          onTap: () {
            context.go(AppRoutes.login);
          },
          child: Text(
            AppStrings.signIn,
            style: AppTextStyles.robotoMedium16MainAccent,
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpButton() {
    return BlocBuilder<SignUpBloc,SignUpState>(
      bloc: _signUpBloc,
      builder: (context,state) => SizedBox(
          height: 46,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _buttonPressed = true;
              });
              final valid = _formKey.currentState!.validate();
              if (!valid) return;
              _signUpBloc.add(SignUpEvent.signUp(
                  email: _emailController.text,
                  password: _passwordController.text));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.mainAccent,
                foregroundColor: AppColors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: state.isLoading ? const Center(child: CircularProgressIndicator(),) : Text(
              AppStrings.signUp,
              style: AppTextStyles.robotoMedium16White,
            ),
          )),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
