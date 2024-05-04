part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}


class SimilarBooksFailer extends SimilarBooksState {
  final String errMessage ;

  const SimilarBooksFailer(this.errMessage);
}


class SimilarBooksSeccess extends SimilarBooksState 
{
  final List<BookModel> books ;

  const SimilarBooksSeccess(this.books);
}


