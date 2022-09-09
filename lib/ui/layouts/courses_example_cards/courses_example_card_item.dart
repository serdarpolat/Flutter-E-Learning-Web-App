import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class CoursesExampleCardItem extends StatelessWidget {
  const CoursesExampleCardItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  final CoursesExampleCardItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(32),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(model.imgPath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(textPrimary.withOpacity(0.5), BlendMode.multiply),
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: lightGrey.withOpacity(0.5),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: model.title.montserrat(
        color: white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
