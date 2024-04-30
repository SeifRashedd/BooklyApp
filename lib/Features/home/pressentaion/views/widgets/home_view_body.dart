import 'package:booklyapp/Features/home/pressentaion/views/widgets/best_saller_list_view.dart';
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
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              Gap(49),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Saller',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSallerListView(),
          ),
        ),
      ],
    );
  }
}
