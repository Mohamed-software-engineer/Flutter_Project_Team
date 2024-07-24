import 'package:dio/dio.dart';

class ApiService {
  String BaseUrl="https://fakestoreapi.com/products";
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String,dynamic>> Get({required String endpoint}) async{
    var response=await dio.get("$BaseUrl$endpoint");
    return response.data;
  }

}