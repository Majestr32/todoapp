import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/app/consts/icons.dart';

import '../../app/consts/colors.dart';
import '../../app/consts/text_styles.dart';
import 'horizontal_screen_padding.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final String? titleText;
  final Widget? titleWidget;
  final List<Widget> actions;

  const CustomAppBar(
      {Key? key,
      this.titleText,
      this.titleWidget,
      required this.actions,
      this.showBackButton = false})
      : assert(titleWidget == null || titleText == null,
            "Both titleText and titleWidget properties can`t be defined"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        decoration: BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(
              color: const Color(0xFF120E42).withOpacity(0.05),
              blurRadius: 35,
              offset: const Offset(0, 5))
        ]),
        child: HorizontalScreenPadding(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              showBackButton ? GestureDetector(
                  onTap: (){
                    context.pop();
                  },
                  child: const Icon(AppIcons.back, size: 24, color: AppColors.black,)) : const SizedBox.shrink(),
              showBackButton ? const SizedBox(width: 30,) : const SizedBox.shrink(),
              Expanded(
                  child: titleText != null
                      ? Text(
                          titleText!,
                          style: AppTextStyles.robotoMedium20,
                        )
                      : titleWidget != null
                          ? titleWidget!
                          : const SizedBox.shrink()),
              const SizedBox(
                width: 16,
              ),
              ...actions,
              const SizedBox(
                width: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
