import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    Key? key,
    this.width,
    this.bg,
    this.iconColor,
    required this.icon,
    this.iconSize,
    this.onTap,
  }) : super(key: key);

  final double? width;
  final Color? bg;
  final Color? iconColor;
  final IconData icon;
  final double? iconSize;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(6),
      color: bg ?? textPrimary,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(6),
        child: SizedBox(
          width: width ?? 44,
          height: width ?? 44,
          child: Center(
            child: Icon(
              icon,
              size: iconSize ?? 24,
              color: iconColor ?? white,
            ),
          ),
        ),
      ),
    );
  }
}
