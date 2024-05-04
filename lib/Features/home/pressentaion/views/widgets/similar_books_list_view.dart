import 'package:booklyapp/Features/home/pressentaion/manger/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillerBooksListView extends StatelessWidget {
  const SimillerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
          if (state is SimilarBooksSeccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(
            imageUrl: 'https://images.app.goo.gl/2ajcMAdMtgW2xiRd7',
          ),
        );
      },
    ),
  );
}
else if(state is SimilarBooksFailer)
{
return CustomErrorWidget(errMessage: state.errMessage);
}
else
{
  return const CustomLoadingIndicator();
}

       
      },
    );
  }
}
