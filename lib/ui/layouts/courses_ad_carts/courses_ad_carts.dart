import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'courses_ad_cart_item.dart';

class CoursesAdCarts extends StatelessWidget {
  const CoursesAdCarts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDFCFF),
      width: Metrics.width(context),
      child: Column(
        children: [
          const SizedBox(height: 80),
          SizedBox(
            width: Metrics.width(context) >= 800 ? 800 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.montserrat(
                    color: textPrimary,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                  children: [
                    const TextSpan(text: 'What you will find '),
                    TextSpan(
                      text: 'with us',
                      style: GoogleFonts.montserrat(
                        color: pink,
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: Metrics.width(context) >= 660 ? 660 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: 'BaseCamp is a powerful online platform where you will find thousand of courses of any subject'.montserrat(
                textAlign: TextAlign.center,
                color: textSecondary,
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 64),
          SizedBox(
            width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: !Metrics.isMobile(context)
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CoursesAdCartItem(
                          icon: FontAwesomeIcons.circlePlay,
                          iconBgColor: navy,
                          title: 'Specialized Videos',
                          subtitle: 'More than 600 courses to create your personalized route and acquire specific skills.',
                        ),
                        SizedBox(width: 36),
                        CoursesAdCartItem(
                          icon: FontAwesomeIcons.schoolFlag,
                          iconBgColor: orange,
                          title: 'Deep Learning',
                          subtitle: 'Schools with new ways of learning to deepen what you want to succeed.',
                        ),
                        SizedBox(width: 36),
                        CoursesAdCartItem(
                          icon: FontAwesomeIcons.graduationCap,
                          iconBgColor: green,
                          title: 'Something New',
                          subtitle: 'Updated content, new courses, blogs, posts and much more every week.',
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: const [
                            CoursesAdCartItem(
                              icon: FontAwesomeIcons.circlePlay,
                              iconBgColor: navy,
                              title: 'Specialized Videos',
                              subtitle: 'More than 600 courses to create your personalized route and acquire specific skills.',
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: const [
                            CoursesAdCartItem(
                              icon: FontAwesomeIcons.schoolFlag,
                              iconBgColor: orange,
                              title: 'Deep Learning',
                              subtitle: 'Schools with new ways of learning to deepen what you want to succeed.',
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: const [
                            CoursesAdCartItem(
                              icon: FontAwesomeIcons.graduationCap,
                              iconBgColor: green,
                              title: 'Something New',
                              subtitle: 'Updated content, new courses, blogs, posts and much more every week.',
                            ),
                          ],
                        ),
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
