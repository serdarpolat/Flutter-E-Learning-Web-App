import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class BlogItem extends StatelessWidget {
  const BlogItem({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.shareInfo,
  }) : super(key: key);

  final String imgPath;
  final String title;
  final String shareInfo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: Metrics.isMobile(context) ? 16 / 9 : 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          title.montserrat(
            fontWeight: FontWeight.bold,
            color: textDark,
            fontSize: 18,
          ),
          const SizedBox(height: 16),
          shareInfo.montserrat(
            color: textSecondary,
          ),
        ],
      ),
    );
  }
}
