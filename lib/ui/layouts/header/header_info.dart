import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isBigScreen = (Metrics.isDesktop(context) || Metrics.isTablet(context));
    double rightPadding = 180 * normalize(min: 912, max: 1440, data: Metrics.width(context));

    return Expanded(
      child: Container(
        padding: EdgeInsets.only(right: rightPadding),
        child: Column(
          crossAxisAlignment: isBigScreen ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.montserrat(
                  color: textPrimary,
                  fontWeight: FontWeight.w700,
                  fontSize: 44,
                  height: 1.25,
                ),
                children: [
                  TextSpan(
                    text: 'Study ',
                    style: GoogleFonts.montserrat(
                      color: pink,
                      fontWeight: FontWeight.w700,
                      fontSize: 44,
                    ),
                  ),
                  const TextSpan(text: 'online and Become a '),
                  TextSpan(
                    text: 'Technology ',
                    style: GoogleFonts.montserrat(
                      color: pink,
                      fontWeight: FontWeight.w700,
                      fontSize: 44,
                    ),
                  ),
                  const TextSpan(text: 'Expert'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            '90% of Basecamp graduates double their income'.montserrat(
              color: textSecondary,
              fontSize: 16,
            ),
            const SizedBox(height: 12),
            '20% create their own technology company or startup'.montserrat(
              color: textSecondary,
              fontSize: 16,
            ),
            const SizedBox(height: 44),
            Row(
              mainAxisAlignment: isBigScreen ? MainAxisAlignment.start : MainAxisAlignment.center,
              children: [
                Material(
                  color: pink,
                  elevation: 4,
                  shadowColor: pink,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      height: 52,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Center(
                          child: 'Join Now'.montserrat(
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Material(
                  color: white,
                  elevation: 4,
                  borderRadius: BorderRadius.circular(52),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(52),
                    child: const SizedBox(
                      height: 52,
                      width: 52,
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.play,
                          color: navy,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
