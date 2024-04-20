import 'package:flutter/material.dart';
import 'package:todoapp/app/validator/validator.dart';

import '../../../../app/consts/colors.dart';
import '../../../../app/consts/icons.dart';
import '../../../../app/consts/strings.dart';
import 'app_textfield.dart';

class ConfirmPasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextEditingController originalPasswordController;
  const ConfirmPasswordTextField({Key? key, required this.originalPasswordController, required this.controller}) : super(key: key);

  @override
  State<ConfirmPasswordTextField> createState() => _ConfirmPasswordTextFieldState();
}

class _ConfirmPasswordTextFieldState extends State<ConfirmPasswordTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: widget.controller,
      validator: (val) => AppValidator.validateConfirmPassword(val, widget.originalPasswordController.text),
      icon: const Icon(AppIcons.password),
      hint: AppStrings.confirmPassword,
      obscure: _obscure,
      suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscure = !_obscure;
            });
          },
          child: Container(
              width: 30,
              height: 30,
              color: AppColors.transparent,
              child: Icon(_obscure ? AppIcons.visibilityOff : AppIcons.visibility))),
    );
  }
}
