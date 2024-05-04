import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/book_detils_section.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/similer_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetilsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: Gap(49)),
                const SimilerBooksSection(),
                const Gap(20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
