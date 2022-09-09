import 'package:base_camp/core/core.dart';
import 'package:base_camp/ui/widgets/cta_button.dart';
import 'package:base_camp/ui/widgets/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppbarButtons extends StatelessWidget {
  const AppbarButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Metrics.isDesktop(context) || Metrics.isTablet(context)) ? Expanded(child: data(context)) : data(context);
  }

  Widget data(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (Metrics.isDesktop(context) || Metrics.isTablet(context))
          Material(
            borderRadius: BorderRadius.circular(6),
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
                      color: textDark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        if (Metrics.isDesktop(context) || Metrics.isTablet(context))
          CTAButton(
            title: 'Sign Up',
            onTap: () {},
          ),
        if (Metrics.isCompact(context) || Metrics.isMobile(context)) const MenuButton(),
      ],
    );
  }
}

class MenuButton extends ConsumerWidget {
  const MenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: IconBtn(
        icon: FontAwesomeIcons.bars,
        onTap: () {
          ref.read(menuProvider.notifier).toggle();
        },
      ),
    );
  }
}
