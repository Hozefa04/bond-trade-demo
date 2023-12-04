import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  String getGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return AppStrings.morning;
    } else if (hour < 18) {
      return AppStrings.noon;
    } else {
      return AppStrings.evening;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        getGreeting(),
        style: AppStyle.titleStyle,
      ),
    );
  }
}
