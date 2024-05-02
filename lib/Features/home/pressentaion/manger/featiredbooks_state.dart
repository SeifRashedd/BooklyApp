part of 'featiredbooks_cubit.dart';

abstract class FeatiredbooksState extends Equatable {
  const FeatiredbooksState();

  @override
  List<Object> get props => [];
}

class FeatiredbooksInitial extends FeatiredbooksState {}

class FeatiredbooksLoading extends FeatiredbooksState {}

class FeatiredbooksFailure extends FeatiredbooksState {
  final String errMsg;

  const FeatiredbooksFailure(this.errMsg);
}

class FeatiredbooksSuccess extends FeatiredbooksState {
  final List<BookModel> books;

  const FeatiredbooksSuccess(this.books);
}



