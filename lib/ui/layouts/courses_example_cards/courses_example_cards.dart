import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/cta_button.dart';
import 'courses_example_card_item.dart';

class CoursesExampleCards extends StatelessWidget {
  const CoursesExampleCards({
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
                    const TextSpan(text: 'Specialize in the areas with the '),
                    TextSpan(
                      text: 'highest labor demand',
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: 'We have more than 600 courses in different learning areas'.montserrat(
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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Metrics.isMobile(context)
                      ? 1
                      : Metrics.isCompact(context)
                          ? 2
                          : 3,
                  childAspectRatio: 234 / 180,
                  crossAxisSpacing: 36,
                  mainAxisSpacing: 36,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: exampleCards.length,
                itemBuilder: (context, index) {
                  final model = exampleCards[index];
                  return CoursesExampleCardItem(model: model);
                },
              ),
            ),
          ),
          const SizedBox(height: 64),
          SizedBox(
            width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CTAButton(
                  title: 'See all courses',
                  bg: Colors.purple,
                  fontSize: 16,
                  height: 56,
                  horizontalPadding: 36,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
