// ignore_for_file: avoid_print

import 'package:api_request_with_dio/model/load_data.dart';
import 'package:api_request_with_dio/model/token.dart';
import 'package:dio/dio.dart';

import '../model/register.dart';

class ApiService {
  final dio = Dio();

  final baseUrl = 'https://reqres.in/api/';

  Future<LoadData?> apiCall() async {
    final response = await dio.get('${baseUrl}users/2');

    return LoadData.fromJson(response.data);

    // response.fromJson(jsonDecode(response.data));
  }

  Future<Token?> loginCall(String email, String password) async {
    try {
      final response = await dio.post('${baseUrl}login',
          data: {"email": email, "password": password});
      print("jııofıeorhgıorehgoıherıoghırehgıergıerhger");
      final x = Token.fromJson(response.data);
      print(x);
      return x;
    } catch (e) {
      print('Hata kodu: ${e.toString()}');
      return null;
    }
  }

  Future<RegisterModel?> registerCall(String email, String password) async {
    try {
      final response = await dio.post('${baseUrl}register',
          data: {"email": email, "password": password});
      final jsonBody = RegisterModel.fromJson(response.data);
      return jsonBody;
    } catch (e) {
      print('Hata kodu: ${e.toString()}');
      return null;
    }
  }
}
