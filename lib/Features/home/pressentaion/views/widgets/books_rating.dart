import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Gap(6.3),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        Gap(9),
        Text(
          '(2390)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}