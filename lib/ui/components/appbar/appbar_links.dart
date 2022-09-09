import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class AppbarLinks extends StatelessWidget {
  const AppbarLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: 'Home'.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {},
          child: 'Courses'.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {},
          child: 'Pricing'.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {},
          child: 'Blog'.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {},
          child: 'About Us'.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
