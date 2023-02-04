part of 'cover_books_cubit.dart';

abstract class CoverBooksState extends Equatable {
  const CoverBooksState();

  @override
  List<Object> get props => [];
}

class CoverBooksInitial extends CoverBooksState {}

class CoverBooksLoading extends CoverBooksState {}

class CoverBooksSuccess extends CoverBooksState {
  final List<BookModel> bookList;

  const CoverBooksSuccess({required this.bookList});
}

class CoverBooksError extends CoverBooksState {
  final String errorMessage;

  const CoverBooksError({required this.errorMessage});
}
