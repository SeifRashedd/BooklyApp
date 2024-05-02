import 'package:bloc/bloc.dart';
import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featiredbooks_state.dart';

class FeatiredbooksCubit extends Cubit<FeatiredbooksState> {
  FeatiredbooksCubit() : super(FeatiredbooksInitial());

  
}
