import 'package:dio/dio.dart';

class ApiService {
  String url = "https://real-time-amazon-data.p.rapidapi.com/";
  final Dio dio;

//work api key:335b9d6457msh3479a0379ff16ffp139874jsnc55eb1e7267c
//not work api key:pk_57895279fa1a7dc1272d6946b4bffef73d9299ce3bc04
  final headers = {
<<<<<<< HEAD
    "X-RapidAPI-Key": '335b9d6457msh3479a0379ff16ffp139874jsnc55eb1e7267c',
=======
    "X-RapidAPI-Key": '/8ce17abdcdmsh079a8549188e3f6p134bb6jsn997412e203a7',
>>>>>>> 389f5c37f610e5db45f7e492f0cc130bf5ab7bd0
    "X-RapidAPI-Host": "real-time-amazon-data.p.rapidapi.com",
  };
  ApiService(this.dio);

  Future<Map<String, dynamic>> Get(
      {var querystring, String endpoint = 'products-by-category'}) async {
    final response = await dio.get("${url}$endpoint",
        queryParameters: querystring, options: Options(headers: headers));
    return response.data;
  }
}
