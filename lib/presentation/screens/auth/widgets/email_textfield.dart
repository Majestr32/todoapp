import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/icons.dart';
import 'package:todoapp/app/consts/strings.dart';
import 'package:todoapp/app/validator/validator.dart';
import 'package:todoapp/presentation/screens/auth/widgets/app_textfield.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  const EmailTextField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextField(
        icon: Icon(AppIcons.email),
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        validator: AppValidator.validateEmail,
        hint: AppStrings.email);
  }
}
