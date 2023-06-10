import 'package:flutter/material.dart';

import 'package:fitness/theme/colors.dart';

class RoundTextInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String icon;
  final EdgeInsets? margin;
  final TextInputType? keyboardType;
  final bool obsecureText;
  final Widget? suffixIcon;
  const RoundTextInputField(
      {Key? key,
      this.controller,
      required this.hintText,
      required this.icon,
      this.margin,
      this.keyboardType,
      this.suffixIcon,
      this.obsecureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: TColor.lightGray,
      ),
      child: TextField(
        keyboardType: TextInputType.none,
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: TColor.gray, fontSize: 16),
            prefixIcon: Container(
              width: 20,
              alignment: Alignment.center,
              child: Image.asset(
                icon,
                height: 20,
                width: 20,
                fit: BoxFit.contain,
                color: TColor.gray,
              ),
            ),
            suffixIcon: suffixIcon),
      ),
    );
  }
}
