// ignore_for_file: invalid_use_of_protected_member

import 'package:api_request_with_dio/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Users extends StatelessWidget {
  Users({super.key});

  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(controller.myList.value[0].avatar.toString()),
            // Text(controller.myList.value[0].id.toString()),
            Text(controller.myList.value[0].firstName.toString()),
            Text(controller.myList.value[0].lastName.toString()),
            Text(controller.myList.value[0].email.toString()),

            Text(controller.myList.value[0].avatar.toString()),
          ],
        ),
      ),
    );
  }
}
