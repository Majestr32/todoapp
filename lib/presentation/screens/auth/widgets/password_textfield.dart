import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/icons.dart';
import 'package:todoapp/app/validator/validator.dart';

import '../../../../app/consts/strings.dart';
import 'app_textfield.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordTextField({Key? key, required this.controller}) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      validator: AppValidator.validatePassword,
      controller: widget.controller,
      icon: Icon(AppIcons.password),
      hint: AppStrings.password,
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
