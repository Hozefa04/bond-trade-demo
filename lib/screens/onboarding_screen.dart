import 'package:bond_trade_demo/screens/home_screen.dart';
import 'package:bond_trade_demo/utils/chart_data.dart';
import 'package:bond_trade_demo/utils/page_utils.dart';
import 'package:bond_trade_demo/utils/shared_prefs_helper.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:bond_trade_demo/widgets/app_button.dart';
import 'package:bond_trade_demo/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 52),
              Text(
                AppStrings.onboardingTitle,
                textAlign: TextAlign.center,
                style: AppStyle.titleStyle,
              ),
              const SizedBox(height: 22),
              Text(
                AppStrings.onboardingDescription,
                textAlign: TextAlign.center,
                style: AppStyle.mediumStyle,
              ),
              const Spacer(),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.3,
                child: Chart(
                  layers: layers(),
                ),
              ),
              const Spacer(),
              AppButton(
                text: AppStrings.getStarted,
                onTap: () {
                  SharedPrefsHelper.setOnboardingValue(true);
                  PageUtils.pushReplacement(
                    context: context,
                    page: const HomeScreen(),
                  );
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
