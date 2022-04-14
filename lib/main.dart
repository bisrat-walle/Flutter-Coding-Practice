import 'package:flutter/material.dart';
import 'profile1.dart';
import 'grid_view_practice.dart';
import 'tutorials/tutorial_detail.dart';
import 'bmi_calculator.dart';
import 'bmi_calculator_theme.dart';

void main() {
  runApp(
		MaterialApp(
		  title: "BMI Calculator",
		  theme: bmiTheme,
		  debugShowCheckedModeBanner: false,
		  home: BMICalculator(),
		  ),
		);
}