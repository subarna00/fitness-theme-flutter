import 'package:flutter/material.dart';

import 'package:fitness/theme/colors.dart';

enum RoundedButtonType { bgGradient, textGradient }

class RoundedBlendButton extends StatelessWidget {
  final String title;
  final RoundedButtonType type;
  final VoidCallback onPressed;
  const RoundedBlendButton({
    Key? key,
    required this.title,
    this.type = RoundedButtonType.bgGradient,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: TColor.primaryG,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(24),
          boxShadow: type == RoundedButtonType.bgGradient
              ? const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      offset: Offset(0, 2))
                ]
              : null),
      child: MaterialButton(
        elevation: type == RoundedButtonType.bgGradient ? 0 : 1,
        onPressed: onPressed,
        color: type == RoundedButtonType.bgGradient
            ? Colors.transparent
            : TColor.white,
        splashColor: TColor.primaryColor2,
        minWidth: double.maxFinite,
        height: 52,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: type == RoundedButtonType.bgGradient
            ? Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: TColor.white,
                    fontSize: 16),
              )
            : ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bound) {
                  return LinearGradient(
                          colors: TColor.primaryG,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)
                      .createShader(
                          Rect.fromLTRB(0, 0, bound.width, bound.height));
                },
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: TColor.gray,
                      fontSize: 16),
                ),
              ),
      ),
    );
  }
}
