part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  const SimilarBooksSuccess({required this.bookList});
  final List<BookModel> bookList;
}

class SimilarBooksFailure extends SimilarBooksState {
  const SimilarBooksFailure({required this.errorMessage});
  final String errorMessage;
}
