import 'package:base_camp/core/core.dart';
import 'package:flutter/material.dart';

class CommentsCardItem extends StatelessWidget {
  const CommentsCardItem({
    Key? key,
    required this.comment,
    required this.imgPath,
    required this.name,
    required this.job,
  }) : super(key: key);

  final String comment;
  final String imgPath;
  final String name;
  final String job;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: lightGrey.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            comment.montserrat(
              color: textSecondary,
              height: 1.25,
            ),
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    imgPath,
                    width: 44,
                    height: 44,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      name.montserrat(
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 8),
                      job.montserrat(
                        color: textSecondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
