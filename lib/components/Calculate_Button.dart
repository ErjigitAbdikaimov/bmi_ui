import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_styless.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        color: AppColors.buttonColor,
        child: Center(
          child: Text(AppText.calculate, style: AppTextStyles.TextWhiteF26),
        ),
      ),
    );
  }
}
