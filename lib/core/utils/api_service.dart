import 'package:dio/dio.dart';

class ApiService {
  static late Dio _dio;

  static void initializeDio() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.googleapis.com/books/v1/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(endPoint);
    return response.data;
    // dio.get method here return Map
  }
}
