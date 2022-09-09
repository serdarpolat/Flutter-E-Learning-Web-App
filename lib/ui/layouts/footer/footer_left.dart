import 'dart:math';

import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterLeft extends StatelessWidget {
  const FooterLeft({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: Metrics.isMobile(context) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: Metrics.isMobile(context) ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                  color: lightGrey,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: const Icon(
                      FontAwesomeIcons.squarePen,
                      color: textPrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Row(
                children: [
                  'Base'.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  'Camp'.montserrat(
                    color: pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Metrics.isMobile(context) ? 16 : 24),
          'We transform the economy of our countires by training the next generation of technology professional.'.montserrat(
            textAlign: Metrics.isMobile(context) ? TextAlign.center : TextAlign.left,
            color: textSecondary,
            fontSize: 16,
            height: 1.25,
            fontWeight: FontWeight.w500,
          ),
          if (Metrics.isMobile(context))
            Container(
              height: 1,
              margin: const EdgeInsets.only(top: 16),
              color: lightGrey,
            ),
        ],
      ),
    );
  }
}
