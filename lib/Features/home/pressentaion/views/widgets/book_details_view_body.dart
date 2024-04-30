import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const Gap(32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .20),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
