import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/colors.dart';
import 'package:todoapp/app/consts/text_styles.dart';

Future<bool> showConfirmOperationPopup(BuildContext context,
    {required String title,
    required String subtitle,
    required String no,
    required String yes}) async {
  final result = await showDialog<bool>(
      context: context,
      builder: (_) {
        return Dialog(
          child: Container(
            width: double.infinity,
            color: AppColors.white,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: IntrinsicHeight(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: AppTextStyles.robotoMedium16,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subtitle,
                  style: AppTextStyles.roboto14,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop(false);
                      },
                      child: Text(
                        no,
                        style: AppTextStyles.robotoMedium12,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop(true);
                      },
                      child: Text(yes,
                          style: AppTextStyles.robotoMedium12
                              .copyWith(color: AppColors.red)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            )),
          ),
        );
      });
  return result ?? false;
}
