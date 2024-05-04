import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failuers.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> feachNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filterong=free-ebooks&q=computer science&Sorting=newest');
      List<BookModel> books = [];
      for (var iteam in data['items']) {
        books.add(BookModel.fromJson(iteam));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> feachFeaturedBooks() async {
   try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filterong=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var iteam in data['items']) {
        books.add(BookModel.fromJson(iteam));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
  
  @override
  Future<Either<Failuer, List<BookModel>>> feachSimallerdBooks({required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filterong=free-ebooks&q=subject:Programming&Sorting=relevance');
      List<BookModel> books = [];
      for (var iteam in data['items']) {
        books.add(BookModel.fromJson(iteam));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
