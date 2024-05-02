import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featiredbooks_state.dart';

class FeatiredbooksCubit extends Cubit<FeaturedbooksState> {
  FeatiredbooksCubit(this.homeRepo) : super(FeatiredbooksInitial());


  final HomeRepo homeRepo;

  Future<void> feachFeaturedBooks() async
  {
   emit(FeatiredbooksLoading());

   var result = await homeRepo.feachFeaturedBooks();

   result.fold((failuer) {
    emit(FeatiredbooksFailure(failuer.errMsg));
   }, (books){
    emit(FeatiredbooksSuccess(books));
   });
  }
}
