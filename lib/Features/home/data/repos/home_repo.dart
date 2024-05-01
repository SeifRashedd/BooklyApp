import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo 
{
 Future<Either<Failuer,List<BookModel>>> feachBestSallerBooks();
 Future<Either<Failuer,List<BookModel>>> feachFeaturedBooks();
}