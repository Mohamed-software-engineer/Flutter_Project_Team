import 'package:dio/dio.dart';

class ApiService {
  String url = "https://real-time-amazon-data.p.rapidapi.com/products-by-category";
  final Dio dio;

  final headers = {
    "X-RapidAPI-Key": '3cfde5a6b2msh6084e31c93d6709p18815bjsn4d2e88c32996',
    "X-RapidAPI-Host": "real-time-amazon-data.p.rapidapi.com",
  };
  ApiService(this.dio);

  Future<Map<String, dynamic>> Get({var querystring}) async {
    final response = await dio.get(url,
        queryParameters: querystring,
        options: Options(headers: headers));

    return response.data;
  }
}
