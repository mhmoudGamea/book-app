import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'cover_books_state.dart';

class CoverBooksCubit extends Cubit<CoverBooksState> {
  CoverBooksCubit(this._homeRepo) : super(CoverBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> getCoverBook() async {
    emit(CoverBooksLoading());
    var result = await _homeRepo.fetchBookCovers();
    result.fold(
      (failure) {
        emit(CoverBooksError(errorMessage: failure.errorMessage));
      },
      (book) {
        emit(CoverBooksSuccess(bookList: book));
      },
    );
  }
}
