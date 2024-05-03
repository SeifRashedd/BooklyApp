part of 'featiredbooks_cubit.dart';

abstract class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

class FeatiredbooksInitial extends FeaturedbooksState {}

class FeatiredbooksLoading extends FeaturedbooksState {}

class FeatiredbooksFailure extends FeaturedbooksState {
  final String errMsg;

  const FeatiredbooksFailure(this.errMsg);
}

class FeatiredbooksSuccess extends FeaturedbooksState {
  final List<BookModel> books;

  const FeatiredbooksSuccess(this.books);
}
