import 'book_model.dart';

class AllBooksModels {
  static List<BookModel> _bookModelList = [];

  static List<BookModel> get getBookModelList {
    return [..._bookModelList];
  }

  AllBooksModels.fromJson(Map<String, dynamic> json) {
    json['items'].forEach((item) {
      _bookModelList.add(BookModel.fromJson(item));
    });
  }
}
