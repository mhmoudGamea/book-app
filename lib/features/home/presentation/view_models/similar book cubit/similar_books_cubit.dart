import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepo) : super(SimilarBooksInitial());
  final HomeRepo _homeRepo;

  Future<void> getSimilarBooks(String category) async {
    emit(SimilarBooksLoading());
    var result = await _homeRepo.fetchRelevanceBooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(errorMessage: failure.errorMessage));
    }, (book) {
      emit(SimilarBooksSuccess(bookList: book));
    });
  }
}
