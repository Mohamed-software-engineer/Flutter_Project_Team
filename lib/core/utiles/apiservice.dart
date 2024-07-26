import 'package:dio/dio.dart';

class ApiService {
  String url = "https://real-time-amazon-data.p.rapidapi.com/products-by-category";
  final Dio dio;

  final headers = {
    "X-RapidAPI-Key": 'pk_57895279fa1a7dc1272d6946b4bffef73d9299ce3bc04',
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
