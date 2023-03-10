// ignore_for_file: avoid_print, invalid_use_of_protected_member

import 'package:api_request_with_dio/model/load_data.dart';
import 'package:api_request_with_dio/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/users.dart';

class ApiController extends GetxController {
  var service = ApiService();

  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;

  late String accessToken;

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

  void loginMethod() {
    service
        .loginCall(emailController.value.text, passwordController.value.text)
        .then((value) {
      if (value != null) {
        accessToken = value.token.toString();
        print('Access Token value: $accessToken +++++++++'); //QpwL5tke4Pnpja7X4
        Get.to(Users());
      } else {
        Get.snackbar('Hata', 'Hatalı gitiş bilgileri...');
      }
    });
  }
}
