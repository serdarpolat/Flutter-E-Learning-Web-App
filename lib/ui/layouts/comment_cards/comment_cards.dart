import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'comments_card_item.dart';

class CommentsCards extends StatelessWidget {
  const CommentsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF7F5FF),
      width: Metrics.width(context),
      child: Column(
        children: [
          const SizedBox(height: 80),
          SizedBox(
            width: Metrics.width(context) >= 520 ? 520 : Metrics.width(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Metrics.isMobile(context) ? 16 : 24),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.montserrat(
                    color: textPrimary,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                  children: [
                    const TextSpan(text: 'What our '),
                    TextSpan(
                      text: 'students ',
                      style: GoogleFonts.montserrat(
                        color: pink,
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                      ),
                    ),
                    const TextSpan(text: 'say about us'),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommentCardList(),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: const BorderSide(
                              color: indigo,
                              width: 1.5,
                            )),
                        color: Colors.white.withOpacity(0),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(6),
                          child: const SizedBox(
                            width: 44,
                            height: 44,
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.arrowLeftLong,
                                size: 24,
                                color: indigo,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Material(
                        borderRadius: BorderRadius.circular(6),
                        color: indigo,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(6),
                          child: const SizedBox(
                            width: 44,
                            height: 44,
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.arrowRightLong,
                                size: 24,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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

class CommentCardList extends StatelessWidget {
  const CommentCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Metrics.width(context) >= 970
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CommentsCardItem(
                comment:
                    'Veniam duis officia fugiat ea id cupidatat commodo ex sunt duis ut nostrud Lorem. Ipsum aliquip et reprehenderit eiusmod anim sit dolor do labore tempor do. Elit magna cillum fugiat officia labore. Et nisi anim duis laboris occaecat duis. Fugiat do commodo laboris excepteur commodo anim eu ex. Nostrud elit consectetur fugiat sit proident sunt. Et aute adipisicing labore adipisicing sunt id esse irure sint aliqua pariatur et minim id.',
                imgPath: 'https://randomuser.me/api/portraits/men/9.jpg',
                name: 'Mathew Hills',
                job: 'Software Developer',
              ),
              SizedBox(width: 32),
              CommentsCardItem(
                comment:
                    'Occaecat ad sint cillum enim reprehenderit eiusmod ea laboris qui. Ipsum incididunt deserunt laboris consectetur commodo labore sit ea aliquip. Consequat culpa cupidatat commodo velit veniam dolore ullamco labore nisi enim quis.',
                imgPath: 'https://randomuser.me/api/portraits/women/53.jpg',
                name: 'Marie Lee',
                job: 'Product Manager',
              ),
              SizedBox(width: 32),
              CommentsCardItem(
                comment:
                    'Sit minim veniam in consequat id enim Lorem id Lorem eu adipisicing. Pariatur non eu id et dolor velit. Ad consequat sunt ex enim aliqua ipsum veniam nostrud cupidatat nisi. Lorem sint consequat culpa id nulla labore excepteur. Sit nulla minim anim consectetur consectetur aute magna deserunt aliquip officia dolor eiusmod.',
                imgPath: 'https://randomuser.me/api/portraits/men/12.jpg',
                name: 'Samuel Hamilton',
                job: 'Software Developer',
              ),
              SizedBox(width: 32),
              CommentsCardItem(
                comment:
                    'Elit adipisicing nulla in magna fugiat consectetur pariatur culpa nostrud sit ex officia eiusmod excepteur. Et ex ut fugiat dolor velit aliquip. Do laboris adipisicing Lorem consequat non proident cillum. Pariatur sit dolor in et minim mollit veniam incididunt cupidatat qui. Nulla cillum irure velit dolore in qui quis. Labore aliquip culpa dolore consequat labore duis.',
                imgPath: 'https://randomuser.me/api/portraits/women/12.jpg',
                name: 'Jennifer Potts',
                job: 'Product Designer',
              ),
            ],
          )
        : Metrics.width(context) >= 576
            ? Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommentsCardItem(
                        comment:
                            'Veniam duis officia fugiat ea id cupidatat commodo ex sunt duis ut nostrud Lorem. Ipsum aliquip et reprehenderit eiusmod anim sit dolor do labore tempor do. Elit magna cillum fugiat officia labore. Et nisi anim duis laboris occaecat duis. Fugiat do commodo laboris excepteur commodo anim eu ex. Nostrud elit consectetur fugiat sit proident sunt. Et aute adipisicing labore adipisicing sunt id esse irure sint aliqua pariatur et minim id.',
                        imgPath: 'https://randomuser.me/api/portraits/men/9.jpg',
                        name: 'Mathew Hills',
                        job: 'Software Developer',
                      ),
                      SizedBox(width: 32),
                      CommentsCardItem(
                        comment:
                            'Occaecat ad sint cillum enim reprehenderit eiusmod ea laboris qui. Ipsum incididunt deserunt laboris consectetur commodo labore sit ea aliquip. Consequat culpa cupidatat commodo velit veniam dolore ullamco labore nisi enim quis.',
                        imgPath: 'https://randomuser.me/api/portraits/women/53.jpg',
                        name: 'Marie Lee',
                        job: 'Product Manager',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommentsCardItem(
                        comment:
                            'Sit minim veniam in consequat id enim Lorem id Lorem eu adipisicing. Pariatur non eu id et dolor velit. Ad consequat sunt ex enim aliqua ipsum veniam nostrud cupidatat nisi. Lorem sint consequat culpa id nulla labore excepteur. Sit nulla minim anim consectetur consectetur aute magna deserunt aliquip officia dolor eiusmod.',
                        imgPath: 'https://randomuser.me/api/portraits/men/12.jpg',
                        name: 'Samuel Hamilton',
                        job: 'Software Developer',
                      ),
                      SizedBox(width: 32),
                      CommentsCardItem(
                        comment:
                            'Elit adipisicing nulla in magna fugiat consectetur pariatur culpa nostrud sit ex officia eiusmod excepteur. Et ex ut fugiat dolor velit aliquip. Do laboris adipisicing Lorem consequat non proident cillum. Pariatur sit dolor in et minim mollit veniam incididunt cupidatat qui. Nulla cillum irure velit dolore in qui quis. Labore aliquip culpa dolore consequat labore duis.',
                        imgPath: 'https://randomuser.me/api/portraits/women/12.jpg',
                        name: 'Jennifer Potts',
                        job: 'Product Designer',
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommentsCardItem(
                        comment:
                            'Veniam duis officia fugiat ea id cupidatat commodo ex sunt duis ut nostrud Lorem. Ipsum aliquip et reprehenderit eiusmod anim sit dolor do labore tempor do. Elit magna cillum fugiat officia labore. Et nisi anim duis laboris occaecat duis. Fugiat do commodo laboris excepteur commodo anim eu ex. Nostrud elit consectetur fugiat sit proident sunt. Et aute adipisicing labore adipisicing sunt id esse irure sint aliqua pariatur et minim id.',
                        imgPath: 'https://randomuser.me/api/portraits/men/9.jpg',
                        name: 'Mathew Hills',
                        job: 'Software Developer',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommentsCardItem(
                        comment:
                            'Occaecat ad sint cillum enim reprehenderit eiusmod ea laboris qui. Ipsum incididunt deserunt laboris consectetur commodo labore sit ea aliquip. Consequat culpa cupidatat commodo velit veniam dolore ullamco labore nisi enim quis.',
                        imgPath: 'https://randomuser.me/api/portraits/women/53.jpg',
                        name: 'Marie Lee',
                        job: 'Product Manager',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommentsCardItem(
                        comment:
                            'Sit minim veniam in consequat id enim Lorem id Lorem eu adipisicing. Pariatur non eu id et dolor velit. Ad consequat sunt ex enim aliqua ipsum veniam nostrud cupidatat nisi. Lorem sint consequat culpa id nulla labore excepteur. Sit nulla minim anim consectetur consectetur aute magna deserunt aliquip officia dolor eiusmod.',
                        imgPath: 'https://randomuser.me/api/portraits/men/12.jpg',
                        name: 'Samuel Hamilton',
                        job: 'Software Developer',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommentsCardItem(
                        comment:
                            'Elit adipisicing nulla in magna fugiat consectetur pariatur culpa nostrud sit ex officia eiusmod excepteur. Et ex ut fugiat dolor velit aliquip. Do laboris adipisicing Lorem consequat non proident cillum. Pariatur sit dolor in et minim mollit veniam incididunt cupidatat qui. Nulla cillum irure velit dolore in qui quis. Labore aliquip culpa dolore consequat labore duis.',
                        imgPath: 'https://randomuser.me/api/portraits/women/12.jpg',
                        name: 'Jennifer Potts',
                        job: 'Product Designer',
                      ),
                    ],
                  ),
                ],
              );
  }
}
