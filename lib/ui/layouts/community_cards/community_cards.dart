import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'community_card_item.dart';

class CommunityCards extends StatelessWidget {
  const CommunityCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double textPadding = normalize(min: 576, max: 1440, data: Metrics.width(context));
    return Container(
      color: const Color(0xffFDFCFF),
      width: Metrics.width(context),
      child: Column(
        children: [
          const SizedBox(height: 80),
          SizedBox(
            width: Metrics.width(context) >= 720 ? 720 : Metrics.width(context),
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
                    TextSpan(
                      text: 'BaseCamp ',
                      style: GoogleFonts.montserrat(
                        color: pink,
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                      ),
                    ),
                    const TextSpan(text: 'is the community that never stop learning'),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 64),
          CommunityCardItem(
            textPadding: textPadding,
            imgPath:
                'https://images.unsplash.com/photo-1619852182277-79aa23f82c8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80',
            title1: 'Take your courses whenever you want',
            subtitle1: 'Decide to study at your own place and when you can. Forget about schedules!',
            title2: 'Live classes',
            subtitle2: 'Weekly seasons on specialized topics with teachers, exclusive for Expert and Expert+ plans',
            imageLeft: true,
          ),
          const SizedBox(height: 64),
          CommunityCardItem(
            textPadding: textPadding,
            imgPath:
                'https://images.unsplash.com/photo-1531545514256-b1400bc00f31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80',
            title1: 'Forums and answers to your questions',
            subtitle1: 'In each class share your learnings, solve your doubts and learn in community',
            title2: 'Learn with a unique community',
            subtitle2: 'Connect ot other students, share your projects and build professional connections',
            imageLeft: false,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
