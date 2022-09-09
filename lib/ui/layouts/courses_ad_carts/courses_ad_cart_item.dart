import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

import '../../widgets/icon_btn.dart';

class CoursesAdCartItem extends StatelessWidget {
  const CoursesAdCartItem({
    Key? key,
    required this.icon,
    required this.iconBgColor,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final IconData icon;
  final Color iconBgColor;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: lightGrey.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconBtn(
              icon: icon,
              bg: iconBgColor,
              iconColor: white,
              iconSize: 24,
              width: 64,
            ),
            const SizedBox(height: 24),
            title.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            const SizedBox(height: 16),
            subtitle.montserrat(
              fontSize: 16,
              color: textSecondary,
              height: 1.25,
            ),
          ],
        ),
      ),
    );
  }
}
