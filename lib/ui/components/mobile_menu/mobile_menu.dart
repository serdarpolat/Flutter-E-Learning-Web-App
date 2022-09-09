import 'package:base_camp/core/core.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/widgets.dart';

class MobileMenu extends ConsumerWidget {
  const MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openedMenu = ref.watch(menuProvider);
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 240),
      top: openedMenu ? 0 : -Metrics.height(context),
      left: 0,
      child: Container(
        width: Metrics.width(context),
        height: Metrics.height(context),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffEAF2FC),
              Color(0xffFEEDFF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: const [
            Links(),
            CloseButton(),
          ],
        ),
      ),
    );
  }
}

class CloseButton extends ConsumerWidget {
  const CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      top: 24,
      right: 24,
      child: IconBtn(
        icon: FeatherIcons.x,
        onTap: () {
          ref.read(menuProvider.notifier).toggle();
        },
      ),
    );
  }
}

class Links extends StatelessWidget {
  const Links({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: 'Home'.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {},
          child: 'Courses'.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {},
          child: 'Pricing'.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {},
          child: 'Blog'.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: () {},
          child: 'About Us'.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 72),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: const BorderSide(
                    color: pink,
                    width: 1.5,
                  )),
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Center(
                      child: 'Sign In'.montserrat(
                        color: pink,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            CTAButton(
              title: 'Sign Up',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
