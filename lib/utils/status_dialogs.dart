import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/widgets/app_button.dart';
import 'package:flutter/material.dart';

Future<dynamic> showProgressDialog(BuildContext context,
    [bool barrierDismissible = false]) {
  return showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) => Center(
      child: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const FittedBox(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    ),
  );
}

Future<dynamic> showErrorDialog(
  BuildContext context,
  String errorMessage, {
  bool isFromLogin = false,
  VoidCallback? thenCallBack,
  VoidCallback? onTap,
  String? title,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) => Center(
      child: AlertDialog(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        title: Text(
          title ?? 'Error',
          style: const TextStyle(color: Colors.red),
        ),
        content: Text(
          errorMessage.split('\$').last.replaceFirst(':', ''),
        ),
        actions: [
          AppButton(
            onTap: onTap ?? () => Navigator.of(context).pop(),
            text: AppStrings.ok,
          ),
        ],
      ),
    ),
  ).then((value) {
    if (thenCallBack != null) {
      thenCallBack.call();
    }
  });
}
