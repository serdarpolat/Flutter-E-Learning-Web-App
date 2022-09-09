import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

import '../../widgets/title_link.dart';

class FooterRight extends StatelessWidget {
  const FooterRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final links = ['Q & A', 'Privacy Policy', 'Terms & Conditions'];
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Help Center'.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          const SizedBox(height: 16),
          ...List.generate(
            links.length,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: TitleLink(
                title: links[index],
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
