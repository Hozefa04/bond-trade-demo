import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.padding,
    required this.controller,
    this.lableText,
    this.limit,
    this.border,
    this.fontSize,
    this.textAlign = TextAlign.start,
    this.hintText,
    this.required = false,
    this.obscure = false,
    this.onChange,
    this.inputAction = TextInputAction.done,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.focusNode,
    this.maxLines = 1,
    this.minLines = 1,
    this.isError = false,
    this.validator,
    this.hintTextStyle,
    this.inputFormatters = const [],
    this.nextFocusNode,
    this.horizontal = 23.0,
    this.prefixIcon,
    this.textfieldColor,
    this.suffixIcon,
    this.onTap,
    this.removeConstraint = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String? lableText;
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final InputBorder? border;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign textAlign;
  final int? limit;
  final double? fontSize;
  final int maxLines;
  final int minLines;
  final bool enabled;
  final bool isError;
  final bool obscure;
  final TextStyle? hintTextStyle;
  final TextInputType keyboardType;
  final bool required;
  final FormFieldValidator<String>? validator;
  final TextInputAction inputAction;
  final Function(String text)? onChange;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double horizontal;
  final VoidCallback? onTap;
  final FocusNode? focusNode, nextFocusNode;
  final Color? textfieldColor;
  final bool removeConstraint;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool hide;
  @override
  void initState() {
    hide = widget.obscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: widget.horizontal,
        vertical: 0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 0,
        color: Colors.white,
        margin: EdgeInsets.zero,
        child: Theme(
          data: ThemeData(
            primaryColor: AppColors.primaryColor,
            primarySwatch: AppColors.getMaterialColor(
              AppColors.primaryColor,
            ),
          ),
          child: TextFormField(
            onTap: widget.onTap,
            onChanged: widget.onChange,
            style: AppStyle.mediumStyle,
            textInputAction: widget.inputAction,
            textAlign: widget.textAlign,
            obscureText: hide,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
            decoration: InputDecoration(
              suffixIcon: widget.obscure
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          hide = !hide;
                        });
                      },
                      icon: Icon(
                        hide ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.primaryColor,
                      ),
                    )
                  : widget.suffixIcon,
              // counterText: '',
              prefixIcon: widget.prefixIcon,
              // prefix: widget.prefixIcon,
              hintText: widget.hintText,
              hintStyle: AppStyle.mediumStyle.copyWith(
                color: Colors.black.withOpacity(0.51),
                fontWeight: FontWeight.w400,
              ),
              focusColor: Colors.black.withOpacity(0.51),
              labelStyle: AppStyle.mediumStyle,
              alignLabelWithHint: true,
              label: widget.hintText == null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: RichText(
                        text: TextSpan(
                          text: widget.lableText,
                          style: AppStyle.mediumStyle.copyWith(
                            color: Colors.black.withOpacity(0.51),
                          ),
                          children: [
                            if (widget.required)
                              TextSpan(
                                text: ' *',
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                          ],
                        ),
                      ),
                    )
                  : null,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                borderSide: BorderSide(
                  color: widget.isError
                      ? AppColors.errorColor
                      : AppColors.borderColorGrey,
                  width: 1.5,
                ),
              ),
              focusedBorder: widget.border ??
                  OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    borderSide: BorderSide(
                      color: AppColors.borderColorGrey,
                      width: 1.5,
                    ),
                  ),
              border: widget.border ??
                  OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    borderSide: BorderSide(
                      color: AppColors.borderColorGrey,
                      width: 1.5,
                    ),
                  ),
            ),
            cursorColor: AppColors.primaryColor,
            controller: widget.controller,
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            readOnly: !widget.enabled,
            maxLength: widget.limit,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            onFieldSubmitted: (value) {
              widget.nextFocusNode != null
                  ? widget.nextFocusNode!.requestFocus()
                  : value;
            },
          ),
        ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class MaskedTextInputFormatter extends TextInputFormatter {
  final String mask;
  final String separator;

  MaskedTextInputFormatter({
    required this.mask,
    required this.separator,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == separator) {
          return TextEditingValue(
            text:
                '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}

class NumericalRangeFormatter extends TextInputFormatter {
  final double min;
  final double max;

  NumericalRangeFormatter({required this.min, required this.max});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text == '') {
      return newValue;
    } else if (int.parse(newValue.text) < min) {
      return const TextEditingValue().copyWith(text: min.toStringAsFixed(2));
    } else {
      return int.parse(newValue.text) > max ? oldValue : newValue;
    }
  }
}
