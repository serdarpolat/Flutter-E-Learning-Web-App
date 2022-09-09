import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blog_item.dart';

class Blogs extends StatelessWidget {
  const Blogs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double pad = normalize(min: 576, max: 1440, data: Metrics.width(context));
    return Container(
      color: const Color(0xffFDFCFF),
      width: Metrics.width(context),
      child: Column(
        children: [
          const SizedBox(height: 80),
          SizedBox(
            width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.montserrat(
                    color: textPrimary,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                  children: [
                    const TextSpan(text: 'Our '),
                    TextSpan(
                      text: 'Blog',
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
          const SizedBox(height: 64),
          SizedBox(
            width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: BlogItems(pad: pad),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        'See more'.montserrat(
                          fontWeight: FontWeight.bold,
                          color: textDark,
                          fontSize: 16,
                        ),
                        const SizedBox(width: 12),
                        const Icon(
                          FontAwesomeIcons.arrowRightLong,
                          color: pink,
                        )
                      ],
                    ),
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

class BlogItems extends StatelessWidget {
  const BlogItems({
    Key? key,
    required this.pad,
  }) : super(key: key);

  final double pad;

  @override
  Widget build(BuildContext context) {
    return !Metrics.isMobile(context)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BlogItem(
                imgPath:
                    'https://images.unsplash.com/photo-1606166325683-e6deb697d301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                title: 'My 7 streams of income as a retired Software Engineer',
                shareInfo: 'Anna Jobs - April 2022',
              ),
              SizedBox(width: 12 + 64 * pad),
              const BlogItem(
                imgPath:
                    'https://images.unsplash.com/photo-1584697964328-b1e7f63dca95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
                title: 'My Google coding interview questions',
                shareInfo: 'Harold Withekker - April 2022',
              ),
              SizedBox(width: 12 + 64 * pad),
              const BlogItem(
                imgPath:
                    'https://images.unsplash.com/photo-1552581234-26160f608093?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
                title: '4 red flags of terrible IT companies',
                shareInfo: 'Carolina Musk - April 2022',
              ),
            ],
          )
        : Column(
            children: [
              Row(
                children: const [
                  BlogItem(
                    imgPath:
                        'https://images.unsplash.com/photo-1606166325683-e6deb697d301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                    title: 'My 7 streams of income as a retired Software Engineer',
                    shareInfo: 'Anna Jobs - April 2022',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  BlogItem(
                    imgPath:
                        'https://images.unsplash.com/photo-1584697964328-b1e7f63dca95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
                    title: 'My Google coding interview questions',
                    shareInfo: 'Harold Withekker - April 2022',
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  BlogItem(
                    imgPath:
                        'https://images.unsplash.com/photo-1552581234-26160f608093?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
                    title: '4 red flags of terrible IT companies',
                    shareInfo: 'Carolina Musk - April 2022',
                  ),
                ],
              ),
            ],
          );
  }
}
