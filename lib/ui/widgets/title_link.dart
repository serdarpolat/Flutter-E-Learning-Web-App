import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class TitleLink extends StatefulWidget {
  const TitleLink({
    Key? key,
    required this.title,
    this.titleColor,
    this.onTap,
  }) : super(key: key);

  final String title;
  final Function()? onTap;
  final Color? titleColor;

  @override
  State<TitleLink> createState() => _TitleLinkState();
}

class _TitleLinkState extends State<TitleLink> {
  TextDecoration textDecoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (val) => setState(() => textDecoration = TextDecoration.underline),
      onExit: (val) => setState(() => textDecoration = TextDecoration.none),
      child: InkWell(
        onTap: widget.onTap,
        child: widget.title.montserrat(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          decoration: textDecoration,
          color: widget.titleColor,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
