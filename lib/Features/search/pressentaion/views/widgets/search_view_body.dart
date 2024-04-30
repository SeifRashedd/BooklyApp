import 'package:booklyapp/Features/home/pressentaion/views/widgets/best_saller_list_view_item.dart';
import 'package:booklyapp/Features/search/pressentaion/views/widgets/custom_search_text_filed.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextFiled(),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Search Result', style: Styles.textStyle18),
            ],
          ),
          Gap(10),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
