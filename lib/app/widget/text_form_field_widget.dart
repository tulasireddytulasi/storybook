import 'package:flutter/material.dart';
import 'package:storybook/app/core/utils/color_palette.dart';

String passwordValue = "";

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType? textInputType;
  final String? hintText;
  final String? labelText;
  final TextEditingController controller;
  final String? parametersValidate;
  final TextInputAction? actionKeyboard;
  final int? maxLines;
  final int? maxLength;
  final bool obscureText;
  final Color? cursorColor;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final TextStyle? errorStyle;
  final TextStyle? hintStyle;
  final bool showSuffixIcon;
  @override
  final Key key;

  const TextFormFieldWidget({
    required this.key,
    this.hintText,
    this.labelText,
    this.textInputType,
    required this.controller,
    this.parametersValidate,
    this.actionKeyboard = TextInputAction.next,
    this.maxLines = 1,
    this.maxLength,
    this.obscureText = false,
    this.cursorColor = ColorPalette.blue,
    this.labelStyle,
    this.errorStyle,
    this.style,
    this.hintStyle,
    this.showSuffixIcon = false,
  }) : super(key: key);

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  late ValueNotifier<bool> showPassword;

  @override
  void initState() {
    super.initState();
    showPassword = ValueNotifier<bool>(widget.obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: showPassword,
        builder: (context, hasConsent, child) {
          return TextFormField(
            key: widget.key,
            keyboardType: widget.textInputType,
            textInputAction: widget.actionKeyboard,
            cursorColor: widget.cursorColor,
            style: widget.style,
            maxLines: widget.maxLines,
            maxLength: widget.maxLength,
            obscureText: showPassword.value,
            decoration: InputDecoration(
              labelText: widget.labelText,
              labelStyle: widget.labelStyle,
              hintText: "${widget.hintText}",
              hintStyle: widget.hintStyle,
              isDense: true,
              contentPadding: const EdgeInsets.only(top: 18, bottom: 5, left: 18, right: 10),
              errorStyle: widget.errorStyle,
              counterText: "",
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(6.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(6.0),
              ),
              suffixIcon: widget.showSuffixIcon
                  ? IconButton(
                      icon: Icon(showPassword.value ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        showPassword.value = showPassword.value ? false : true;
                      },
                    )
                  : null,
            ),
            controller: widget.controller,
            onChanged: (value) {
              if (widget.hintText == "Enter your New Password" || widget.hintText == "Enter your Password") {
                passwordValue = value;
              }
            },
            validator: (value) {
              if (widget.parametersValidate != null) {
                if (value != null && value.isEmpty) {
                  return widget.parametersValidate;
                } else {
                  if (widget.hintText == "Enter your New Password") {
                    return value!.length < 8 ? "Must be at least 8 characters" : null;
                  } else if (widget.hintText == "Enter your Confirm Password") {
                    return passwordValue != value ? "Both passwords must match" : null;
                  } else if (widget.hintText == "Enter your email") {
                    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                    return emailValid ? null : "Invalid Email";
                  } else if (widget.hintText == "Pincode") {
                    return value!.length < 6 ? "Invalid PinCode" : null;
                  } else {
                    return null;
                  }
                }
              }
              return null;
            },
          );
        });
  }
}
