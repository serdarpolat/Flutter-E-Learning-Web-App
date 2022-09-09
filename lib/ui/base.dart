import 'package:base_camp/core/core.dart';
import 'package:base_camp/ui/widgets/icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/mobile_menu/mobile_menu.dart';
import 'layouts/blogs/blogs.dart';
import 'layouts/comment_cards/comment_cards.dart';
import 'layouts/community_cards/community_cards.dart';
import 'layouts/courses_ad_carts/courses_ad_carts.dart';
import 'layouts/courses_example_cards/courses_example_cards.dart';
import 'layouts/footer/footer.dart';
import 'layouts/layouts.dart';

class Base extends ConsumerStatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseState();
}

class _BaseState extends ConsumerState<Base> {
  late ScrollController _baseController;
  final GlobalKey _headerKey = GlobalKey();
  Future scrollToItem(GlobalKey key) async {
    await Scrollable.ensureVisible(key.currentContext!, duration: const Duration(milliseconds: 480));
  }

  @override
  void initState() {
    _baseController = ScrollController();
    _baseController.addListener(() {
      // print(_baseController.offset);
      if (_baseController.offset > 500) {
        ref.read(scrollProvider.notifier).change(true);
      } else {
        ref.read(scrollProvider.notifier).change(false);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _baseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SizedBox(
        width: Metrics.width(context),
        height: Metrics.height(context),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _baseController,
              child: Column(
                children: [
                  Header(headerKey: _headerKey),
                  const CoursesAdCarts(),
                  const CoursesExampleCards(),
                  const CommunityCards(),
                  const CommentsCards(),
                  const Blogs(),
                  const Footer(),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: ref.watch(scrollProvider) ? 320 : 640),
              bottom: 44 + 44,
              right: !ref.watch(scrollProvider) ? -140 : 16,
              child: AnimatedScale(
                duration: Duration(milliseconds: ref.watch(scrollProvider) ? 320 : 640),
                scale: ref.watch(scrollProvider) ? 1 : 0,
                child: IconBtn(
                  icon: FontAwesomeIcons.arrowUp,
                  onTap: () {
                    scrollToItem(_headerKey);
                  },
                ),
              ),
            ),
            if (Metrics.isMobile(context) || Metrics.isCompact(context)) const MobileMenu(),
          ],
        ),
      ),
    );
  }
}
