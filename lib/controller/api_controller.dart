// ignore_for_file: avoid_print, invalid_use_of_protected_member

import 'package:api_request_with_dio/model/load_data.dart';
import 'package:api_request_with_dio/service/api_service.dart';
import 'package:get/get.dart';

import '../views/users.dart';

class ApiController extends GetxController {
  var service = ApiService();

  var myList = <LoadDataData>[].obs;

  void fetchUsers() {
    myList.value.clear();
    service.apiCall().then((value) {
      print(value!.data!.toJson());

      myList.value.add(value.data!);
      print('************************');
      print(myList.value[0].toJson());
      Get.to(Users());
    });
  }
}
