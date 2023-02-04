import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this._homeRepo) : super(NewestBookInitial());

  final HomeRepo _homeRepo;

  Future<void> getNewestBook() async {
    emit(NewestBookLoading());
    var result = await _homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBookError(errorMessage: failure.errorMessage));
    }, (book) {
      emit(NewestBookSuccess(bookList: book));
    });
  }
}
