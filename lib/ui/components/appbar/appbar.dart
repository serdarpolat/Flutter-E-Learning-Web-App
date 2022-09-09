import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

import 'appbar_buttons.dart';
import 'appbar_links.dart';
import 'brand_logo.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Metrics.isDesktop(context) ? 1440 : Metrics.width(context),
      height: 100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
        child: Row(
          children: [
            const BrandLogo(),
            if (Metrics.isDesktop(context) || Metrics.isTablet(context)) const AppbarLinks(),
            if (Metrics.isCompact(context) || Metrics.isMobile(context)) const Spacer(),
            const AppbarButtons(),
          ],
        ),
      ),
    );
  }
}
