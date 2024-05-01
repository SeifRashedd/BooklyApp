import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repo.dart';
import 'package:booklyapp/core/errors/failuers.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> feachNewestBooks() async {

  try {
  var data =await apiService.get(
        endPoint:
            'volumes?Filterong=free-ebooks&q=subject:Programming&Sorting=newest');
  List<BookModel> books = [];
  for (var iteam in data['items']) {
    books.add(BookModel.fromJson(iteam));
  }
  return right(books);
}  catch (e) {
  return left(ServerFailure());
}
            
  }

  @override
  Future<Either<Failuer, List<BookModel>>> feachFeaturedBooks() {
    // TODO: implement feachFeaturedBooks
    throw UnimplementedError();
  }
}
