import 'package:booklyapp/Features/home/pressentaion/views/widgets/book_detils_section.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/similer_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetilsSection(),
                Expanded(child: Gap(49)),
                SimilerBooksSection(),
                Gap(20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
