import 'package:dio/dio.dart';

class ApiService {
  String url = "https://real-time-amazon-data.p.rapidapi.com/products-by-category";
  final Dio dio;

  final headers = {
    "X-RapidAPI-Key": '8ce17abdcdmsh079a8549188e3f6p134bb6jsn997412e203a7',
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
