import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_box.dart';
import 'data_container.dart';

const activeColor = Color(0xff0073dd);
const inActiveColor = Color(0xFF212121);

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color maleBoxColor = activeColor;
  Color femaleBoxColor = inActiveColor;
  int height = 180;
  int weight = 20;
  int age = 25;
  String result = "";
  String resultDetail = "Result here";
  double bmi = 0;

  void updateBoxColor(int gender) {
    if (gender == 1) {
      if (maleBoxColor == inActiveColor) {
        maleBoxColor = activeColor;
        femaleBoxColor = inActiveColor;
      } else {
        maleBoxColor = inActiveColor;
        femaleBoxColor = activeColor;
      }
    } else {
      if (femaleBoxColor == inActiveColor) {
        femaleBoxColor = activeColor;
        maleBoxColor = inActiveColor;
      } else {
        femaleBoxColor = inActiveColor;
        maleBoxColor = activeColor;
      }
    }
  }

  String calculateBmi(int weight, int height) {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateBoxColor(1);
                });
              },
              child: ContainerBox(
                boxColor: maleBoxColor,
                childwidget: DataContainer(
                    icon: FontAwesomeIcons.male, title: 'MALE'),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateBoxColor(2);
                });
              },
              child: ContainerBox(
                boxColor: femaleBoxColor,
                childwidget: DataContainer(
                    icon: FontAwesomeIcons.female, title: 'FEMALE'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
