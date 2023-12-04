import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onTap;
  final bool isLoading;
  final double? textSize;
  const AppButton({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.isLoading = false,
    required this.onTap,
    this.textSize,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isLoading ? null : widget.onTap,
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: widget.color ?? AppColors.primaryColor,
        ),
        child: widget.isLoading
            ? CupertinoActivityIndicator(
                color: AppColors.whiteColor,
              )
            : Material(
                elevation: isPressed ? 1.0 : 6.0,
                shadowColor: AppColors.greyColor,
                borderRadius: BorderRadius.circular(4),
                color: widget.color ?? AppColors.primaryColor,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: widget.textSize ?? 16,
                      horizontal: widget.textSize ?? 22,
                    ),
                    child: Text(
                      widget.text,
                      textAlign: TextAlign.center,
                      style: AppStyle.buttonStyle.copyWith(
                        color: widget.textColor,
                        fontSize: widget.textSize,
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class AppOutlinedButton extends StatefulWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback onTap;
  final bool isLoading;
  final double? textSize;
  const AppOutlinedButton({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.isLoading = false,
    required this.onTap,
    this.textSize,
  });

  @override
  State<AppOutlinedButton> createState() => _AppOutlinedButtonState();
}

class _AppOutlinedButtonState extends State<AppOutlinedButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isLoading ? null : widget.onTap,
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: widget.color ?? AppColors.primaryColor,
          ),
        ),
        child: widget.isLoading
            ? CupertinoActivityIndicator(
                color: AppColors.whiteColor,
              )
            : Material(
                elevation: isPressed ? 1.0 : 6.0,
                shadowColor: AppColors.greyColor,
                borderRadius: BorderRadius.circular(4),
                color: AppColors.whiteColor,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: widget.textSize ?? 16,
                      horizontal: widget.textSize ?? 22,
                    ),
                    child: Text(
                      widget.text,
                      textAlign: TextAlign.center,
                      style: AppStyle.buttonStyle.copyWith(
                        color: widget.textColor,
                        fontSize: widget.textSize,
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
