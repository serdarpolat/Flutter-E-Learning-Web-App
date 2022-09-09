import 'package:base_camp/core/core.dart';
import 'package:base_camp/ui/layouts/footer/footer_right.dart';
import 'package:flutter/material.dart';

import 'footer_bottom.dart';
import 'footer_left.dart';
import 'footer_middle.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pad = normalize(min: 576, max: 1440, data: Metrics.width(context));
    return Container(
      color: const Color(0xfffeedff).withOpacity(0.5),
      width: Metrics.width(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
        child: Column(
          children: [
            const SizedBox(height: 44),
            if (Metrics.isMobile(context))
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Row(
                  children: const [FooterLeft()],
                ),
              ),
            SizedBox(
              width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!Metrics.isMobile(context)) const FooterLeft(),
                  SizedBox(width: 16 + 64 * pad),
                  const FooterMiddle(),
                  SizedBox(width: 16 + 64 * pad),
                  const FooterRight(),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const FooterBottom(),
            // const SizedBox(height: 44),
          ],
        ),
      ),
    );
  }
}
