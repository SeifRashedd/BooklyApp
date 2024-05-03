import 'package:booklyapp/Features/home/pressentaion/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/books_rating.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/styles.dart';

class BookDetilsSection extends StatelessWidget {
  const BookDetilsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Gap(32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .21),
          child: const CustomBookImage(
            imageUrl:'https://images.app.goo.gl/2ajcMAdMtgW2xiRd7'
          ),
        ),
        const Gap(30),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const Gap(6),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Gap(14),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const Gap(38),
        const BooksAction(),
      ],
    );
  }
}
