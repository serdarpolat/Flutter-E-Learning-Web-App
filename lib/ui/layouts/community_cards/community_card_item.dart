import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class CommunityCardItem extends StatelessWidget {
  const CommunityCardItem(
      {super.key,
      required this.textPadding,
      required this.imgPath,
      required this.title1,
      required this.subtitle1,
      required this.title2,
      required this.subtitle2,
      required this.imageLeft});

  final double textPadding;

  final String imgPath;
  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final bool imageLeft;

  @override
  Widget build(BuildContext context) {
    bool isBigScreen = Metrics.isDesktop(context) || Metrics.isTablet(context);

    return SizedBox(
      width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
        child: isBigScreen
            ? Row(
                children: imageLeft
                    ? [
                        CommunityCardItemImage(imgPath: imgPath, imageLeft: imageLeft, isBigScreen: isBigScreen),
                        CommunityCardItemInfo(
                          textPadding: textPadding,
                          title1: title1,
                          subtitle1: subtitle1,
                          title2: title2,
                          subtitle2: subtitle2,
                          imageLeft: imageLeft,
                          isBigScreen: isBigScreen,
                        ),
                      ]
                    : [
                        CommunityCardItemInfo(
                          textPadding: textPadding,
                          title1: title1,
                          subtitle1: subtitle1,
                          title2: title2,
                          subtitle2: subtitle2,
                          imageLeft: imageLeft,
                          isBigScreen: isBigScreen,
                        ),
                        CommunityCardItemImage(
                          imgPath: imgPath,
                          imageLeft: imageLeft,
                          isBigScreen: isBigScreen,
                        ),
                      ],
              )
            : Column(
                children: [
                  CommunityCardItemImage(imgPath: imgPath, imageLeft: imageLeft, isBigScreen: isBigScreen),
                  CommunityCardItemInfo(
                    textPadding: textPadding,
                    title1: title1,
                    subtitle1: subtitle1,
                    title2: title2,
                    subtitle2: subtitle2,
                    imageLeft: imageLeft,
                    isBigScreen: isBigScreen,
                  ),
                ],
              ),
      ),
    );
  }
}

class CommunityCardItemInfo extends StatelessWidget {
  const CommunityCardItemInfo({
    Key? key,
    required this.textPadding,
    required this.title1,
    required this.subtitle1,
    required this.title2,
    required this.subtitle2,
    required this.imageLeft,
    required this.isBigScreen,
  }) : super(key: key);

  final double textPadding;
  final String title1;
  final String subtitle1;
  final String title2;
  final String subtitle2;
  final bool imageLeft;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return isBigScreen
        ? Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(right: (imageLeft ? 220 : 180) * textPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title1.montserrat(
                    color: textDark,
                    textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                    fontSize: 20 + 12 * textPadding,
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                  ),
                  const SizedBox(height: 16),
                  subtitle1.montserrat(
                    textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                    color: textSecondary,
                    fontSize: 14 + 4 * textPadding,
                    height: 1.65,
                  ),
                  const SizedBox(height: 64),
                  title2.montserrat(
                    textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                    color: pink,
                    fontSize: 20 + 12 * textPadding,
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                  ),
                  const SizedBox(height: 16),
                  subtitle2.montserrat(
                    textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                    color: textSecondary,
                    fontSize: 14 + 4 * textPadding,
                    height: 1.65,
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title1.montserrat(
                        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                        color: textDark,
                        fontSize: 20 + 12 * textPadding,
                        fontWeight: FontWeight.bold,
                        height: 1.25,
                      ),
                      SizedBox(height: isBigScreen ? 16 : 0),
                      subtitle1.montserrat(
                        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                        color: textSecondary,
                        fontSize: 14 + 4 * textPadding,
                        height: 1.65,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      title2.montserrat(
                        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                        color: pink,
                        fontSize: 20 + 12 * textPadding,
                        fontWeight: FontWeight.bold,
                        height: 1.25,
                      ),
                      SizedBox(height: isBigScreen ? 16 : 0),
                      subtitle2.montserrat(
                        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
                        color: textSecondary,
                        fontSize: 14 + 4 * textPadding,
                        height: 1.65,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}

class CommunityCardItemImage extends StatelessWidget {
  const CommunityCardItemImage({
    Key? key,
    required this.imgPath,
    required this.imageLeft,
    required this.isBigScreen,
  }) : super(key: key);

  final String imgPath;
  final bool imageLeft;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return isBigScreen
        ? Expanded(
            flex: 6,
            child: imgData(),
          )
        : Row(
            children: [
              Expanded(
                flex: 6,
                child: imgData(),
              ),
            ],
          );
  }

  AspectRatio imgData() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        margin: EdgeInsets.only(right: imageLeft ? (isBigScreen ? 64 : 0) : 0),
        padding: const EdgeInsets.all(32),
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgPath),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(textPrimary.withOpacity(0.5), BlendMode.multiply),
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: lightGrey.withOpacity(0.5),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
      ),
    );
  }
}
