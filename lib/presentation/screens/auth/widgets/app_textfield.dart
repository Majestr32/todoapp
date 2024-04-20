import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/text_styles.dart';

class AppTextField extends StatelessWidget {
  final Widget icon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool obscure;
  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  const AppTextField({Key? key, required this.icon, required this.hint, this.obscure = false, this.suffixIcon, this.validator, required this.controller, this.keyboardType = TextInputType.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: AppColors.mainAccent,
      obscureText: obscure,
      validator: validator,
      style: AppTextStyles.robotoMedium16,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 13),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 60
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: icon,
        ),
        suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: suffixIcon),
        suffixIconColor: AppColors.black,
        hintText: hint,
        hintStyle: AppTextStyles.robotoMedium16Opacity05,
        prefixIconColor: AppColors.black,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blackOpacity01
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AppColors.blackOpacity01
            ),
            borderRadius: BorderRadius.circular(15)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: AppColors.mainAccent
            ),
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
