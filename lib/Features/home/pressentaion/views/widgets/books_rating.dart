import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(Icons.star, color: Colors.amber),
        const Gap(6.3),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const Gap(9),
         Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
