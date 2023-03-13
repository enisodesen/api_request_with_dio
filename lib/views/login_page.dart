import 'package:api_request_with_dio/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          body: controller.pageStatus.value
              ? SafeArea(
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    controller.changePageStatus();
                                  },
                                  child: const Text('Sign Up -->')),
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () {},
                                    child: const Text(''))),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                controller: controller.emailController.value,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                controller: controller.passwordController.value,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              ElevatedButton(
                                  child: const Text('Login'),
                                  onPressed: () {
                                    controller.loginMethod();
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : SafeArea(
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: const Text('')),
                            ),
                            Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      controller.changePageStatus();
                                    },
                                    child: const Text('<-- Login'))),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                controller: controller.emailRegister.value,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextField(
                                controller: controller.passwordRegister.value,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              ElevatedButton(
                                  child: const Text('Sign Up'),
                                  onPressed: () {
                                    controller.registerMethod();
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
    );
  }
}
