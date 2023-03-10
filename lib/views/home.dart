import 'package:api_request_with_dio/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              child: const Text('Get'),
              onPressed: () {
                controller.fetchUsers();
              }),
        ],
      )),
    );
  }
}
