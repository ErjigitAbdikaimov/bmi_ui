import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_styless.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyles.TextWhiteF22,
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                style: AppTextStyles.textWhiteF148,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
