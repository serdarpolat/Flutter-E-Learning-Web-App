import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/icon_btn.dart';

class FooterBottom extends StatelessWidget {
  const FooterBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Metrics.width(context) >= 1440 ? 1440 : Metrics.width(context),
      decoration: const BoxDecoration(border: Border(top: BorderSide(color: lightGrey))),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          '© 2022 - All right reserved.'.montserrat(
            color: textSecondary,
            fontSize: 16,
            height: 1.25,
            fontWeight: FontWeight.w500,
          ),
          Row(
            children: [
              IconBtn(
                icon: FontAwesomeIcons.facebookF,
                bg: const Color(0xff1877f2),
                iconColor: white,
                onTap: () {},
                width: 32,
                iconSize: 18,
              ),
              const SizedBox(width: 10),
              IconBtn(
                icon: FontAwesomeIcons.linkedinIn,
                bg: const Color(0xff0077b5),
                iconColor: white,
                onTap: () {},
                width: 32,
                iconSize: 18,
              ),
              const SizedBox(width: 10),
              IconBtn(
                icon: FontAwesomeIcons.instagram,
                bg: const Color(0xffe1306c),
                iconColor: white,
                onTap: () {},
                width: 32,
                iconSize: 18,
              ),
              const SizedBox(width: 10),
              IconBtn(
                icon: FontAwesomeIcons.twitter,
                bg: const Color(0xff1da1f2),
                iconColor: white,
                onTap: () {},
                width: 32,
                iconSize: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
