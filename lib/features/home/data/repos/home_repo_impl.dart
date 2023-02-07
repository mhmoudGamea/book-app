import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/error/failure.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../models/book_model/all_books_models.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBookCovers() async {
    try {
      final data = await ApiService.get(
          endPoint: 'volumes?Filtering=free-ebboks&q=subject:programming');

      AllBooksModels.fromJson(data);

      return right(AllBooksModels.getBookModelList);
    } catch (error) {
      if (error is DioError) {
        return left(ServerSideError.fromDioError(error));
      }
      return left(ServerSideError(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await ApiService.get(
          endPoint:
              'volumes?Filtering=free-ebboks&Sorting=newest&q=computer science');
      AllBooksModels.fromJson(data);

      return right(AllBooksModels.getBookModelList);
    } catch (error) {
      if (error is DioError) {
        return left(ServerSideError.fromDioError(error));
      }
      return left(ServerSideError(error.toString()));
    }
  }
}
