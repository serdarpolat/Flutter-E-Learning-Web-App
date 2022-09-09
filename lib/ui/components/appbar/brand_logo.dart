import 'dart:math';

import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Metrics.isDesktop(context) || Metrics.isTablet(context)) ? Expanded(child: data()) : data();
  }

  Widget data() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 60,
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
        const SizedBox(width: 18),
        Row(
          children: [
            'Base'.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            'Camp'.montserrat(
              color: pink,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ],
        ),
      ],
    );
  }
}
