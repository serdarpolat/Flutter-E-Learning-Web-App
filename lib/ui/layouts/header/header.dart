import 'package:base_camp/core/core.dart';
import 'package:base_camp/ui/components/components.dart';
import 'package:flutter/material.dart';

import 'header_image.dart';
import 'header_info.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.headerKey,
  }) : super(key: key);
  final GlobalKey headerKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: headerKey,
      width: Metrics.width(context),
      height: 860,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffEAF2FC),
          Color(0xffFEEDFF),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Column(
        children: [
          const Appbar(),
          Expanded(
            child: SizedBox(
              width: Metrics.isDesktop(context) ? 1440 : Metrics.width(context),
              height: 100,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
                child: Row(
                  children: [
                    const HeaderInfo(),
                    if (Metrics.isDesktop(context) || Metrics.isTablet(context)) const HeaderImage(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
