import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failuer, List<BookModel>>> feachBestSallerBooks() {
    // TODO: implement feachBestSallerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> feachFeaturedBooks() {
    // TODO: implement feachFeaturedBooks
    throw UnimplementedError();
  }
}