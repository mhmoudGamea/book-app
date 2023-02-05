import 'package:book_app/core/error/failure.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBookCovers();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
