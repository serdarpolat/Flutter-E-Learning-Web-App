import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  const CTAButton({
    Key? key,
    this.bg,
    this.height,
    this.fontSize,
    required this.title,
    this.titleColor,
    this.onTap,
    this.horizontalPadding,
  }) : super(key: key);

  final Color? bg;
  final double? height;
  final double? fontSize;
  final String title;
  final Color? titleColor;
  final Function()? onTap;
  final double? horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      color: bg ?? pink,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: SizedBox(
          height: height ?? 44,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 24),
            child: Center(
              child: title.montserrat(
                color: titleColor ?? white,
                fontWeight: FontWeight.w600,
                fontSize: fontSize ?? 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
