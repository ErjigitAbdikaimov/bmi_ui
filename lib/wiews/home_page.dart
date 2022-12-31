import 'dart:math';

import 'package:bmi_ui/components/alert_dialog.dart';
import 'package:bmi_ui/components/male_famele.dart';
import 'package:bmi_ui/components/slider.dart';
import 'package:bmi_ui/components/status_card.dart';
import 'package:bmi_ui/components/status_card2.dart';
import 'package:bmi_ui/utils/app_colors.dart';
import 'package:bmi_ui/utils/app_styless.dart';
import 'package:bmi_ui/utils/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Calculate_Button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFemale = false;
  double height = 180;
  int weight = 65;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title:
            const Text(AppText.appBarTitle, style: AppTextStyles.TextWhiteF22),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  statusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  statusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 5),
            statusCard(
              child: Sliderwidget(
                CurrentSliderValue: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                statusCard(
                    child: WeigtAge(
                  text: AppText.weight,
                  value: weight,
                  remove: (maani) {
                    setState(() {
                      weight = maani;
                    });
                  },
                  add: (maani) {
                    setState(() {
                      weight = maani;
                    });
                  },
                )),
                SizedBox(
                  width: 20,
                ),
                statusCard(
                  child: WeigtAge(
                      text: AppText.age,
                      value: age,
                      remove: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          age = maani;
                        });
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            print('сенин салмагын аз экен.коп же');
            showMyDialog(
                context: context, text: 'сенин салмагын аз экен.коп же');
          } else if (result > 18.5 && result <= 24.9) {
            print('салмагын жакшы молодец');
            showMyDialog(context: context, text: 'салмагын жакшы молодец');
          } else if (result > 24.9) {
            print('салмагын коп экен');
            showMyDialog(context: context, text: 'салмагын коп экен');
          } else {
            print('маалымат ката');
            showMyDialog(context: context, text: 'маалымат ката');
          }
        },
      ),
    );
  }
}
