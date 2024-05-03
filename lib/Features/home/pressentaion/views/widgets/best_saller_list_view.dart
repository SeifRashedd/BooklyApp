import 'package:booklyapp/Features/home/pressentaion/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/Features/home/pressentaion/views/widgets/best_saller_list_view_item.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:booklyapp/core/widgets/custom_loading_indic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
  
        if(state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
            
          );
        }
        else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }

        else{
          return const CustomLoadingIndicator();
        }
        
      },
    );
  }
}
