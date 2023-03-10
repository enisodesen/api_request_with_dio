import 'package:api_request_with_dio/model/load_data.dart';
import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio();

  final baseUrl = 'https://reqres.in/api/users/2';

  Future<LoadData?> apiCall() async {
    final response = await dio.get(baseUrl);

    return LoadData.fromJson(response.data);

    // response.fromJson(jsonDecode(response.data));
  }
}
