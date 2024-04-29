import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/featured_books_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Gap(49),
          Text(
            'Best Saller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
