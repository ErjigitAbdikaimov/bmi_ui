import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_styless.dart';
import 'package:flutter/material.dart';

class WeigtAge extends StatelessWidget {
  const WeigtAge({
    Key? key,
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
  }) : super(key: key);
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(height: 10),
        Text(
          text,
          style: AppTextStyles.textgreyF22,
        ),
        Text('$value', style: AppTextStyles.textwhiteF50),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Remove_AddButton(
                iconData: Icons.remove,
                onPressed: () => remove(value - 1),
              ),
              const SizedBox(width: 20),
              Remove_AddButton(
                iconData: Icons.add,
                onPressed: () => add(value + 1),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Remove_AddButton extends StatelessWidget {
  const Remove_AddButton({
    Key? key,
    required this.iconData,
    this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.button2Color,
      foregroundColor: AppColors.whiteColor,
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}
