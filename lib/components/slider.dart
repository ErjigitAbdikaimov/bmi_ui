import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_styless.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sliderwidget extends StatelessWidget {
  const Sliderwidget(
      {Key? key, required this.CurrentSliderValue, required this.onChanged})
      : super(key: key);
  final double CurrentSliderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppText.height, style: AppTextStyles.textgreyF22),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${CurrentSliderValue.toInt()}',
              style: AppTextStyles.textwhiteF50,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                AppText.cm,
                style: TextStyle(color: AppColors.greyText, fontSize: 22),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              max: 300,
              value: CurrentSliderValue,
              onChanged: onChanged,
              // (value) {
              // setState(() {
              //   CurrentSliderValue = value;
              // });
              //},
              activeColor: AppColors.whiteColor,
              thumbColor: AppColors.buttonColor,
            ),
          ),
        )
      ],
    );
  }
}
