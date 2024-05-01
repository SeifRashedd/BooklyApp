
import 'package:dio/dio.dart';

class ApiService
{
  ApiService(this.dio);
  
  final _baseUrl='https://www.googleapis.com/books/v1/volumes';
  final Dio dio;


  Future<Map<String,dynamic>> get({required String endPoint})async
  {
  var responce =  await dio.get('$_baseUrl$endPoint');

  return responce.data;
  }
 
  
}