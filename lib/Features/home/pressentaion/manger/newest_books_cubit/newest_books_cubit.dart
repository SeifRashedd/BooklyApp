import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  
  final HomeRepo homeRepo;

  Future<void> feachNewestBoodBooks() async
  {
   emit(NewestBooksLoading());

   var result = await homeRepo.feachFeaturedBooks();

   result.fold((failuer) {
    emit(NewestBooksFailure(failuer.errMsg));
   }, (books){
    emit(NewestBooksSuccess(books));
   });
  }
}
