import 'package:booklyapp/Features/home/pressentaion/manger/featiredbooks_cubit/featiredbooks_cubit.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indic.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatiredbooksCubit, FeaturedbooksState>(
      builder: (context, state) {
        if (state is FeatiredbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: ()
                    {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index],);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeatiredbooksFailure) {
          return CustomErrorWidget(errMessage: state.errMsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
