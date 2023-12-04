import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:bond_trade_demo/widgets/app_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 22),
            Text(
              AppStrings.yourProfile,
              style: AppStyle.titleStyle,
            ),
            const SizedBox(height: 22),
            ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.network(
                AppStrings.avatarUrl,
                fit: BoxFit.cover,
                width: 152,
                height: 152,
              ),
            ),
            const SizedBox(height: 42),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    AppStrings.username,
                    style: AppStyle.largeStyle,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    AppStrings.usernameValue,
                    style: AppStyle.largeStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    AppStrings.email,
                    style: AppStyle.largeStyle,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    AppStrings.emailValue,
                    style: AppStyle.largeStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    AppStrings.mobile,
                    style: AppStyle.largeStyle,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    AppStrings.mobileValue,
                    style: AppStyle.largeStyle,
                  ),
                ),
              ],
            ),
            const Spacer(),
            AppButton(
              text: AppStrings.changePassword,
              onTap: () {},
            ),
            const SizedBox(height: 12),
            AppOutlinedButton(
              text: AppStrings.deleteAccount,
              onTap: () {},
              color: AppColors.errorColor,
              textColor: AppColors.errorColor,
            ),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
