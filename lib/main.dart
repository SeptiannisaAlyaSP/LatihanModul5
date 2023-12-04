import 'package:flutter/material.dart';
import 'package:flutter_application_1/account_controller.dart';
import 'package:flutter_application_1/client_controller.dart';
import 'package:flutter_application_1/database_controller.dart';
import 'package:flutter_application_1/registrasi_page.dart';
import 'package:flutter_application_1/storage_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize controllers
    Get.put(ClientController());
    Get.put(AccountController());
    Get.put(DatabaseController());
    Get.put(StorageController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appwrite Flutter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationPage(), // Set the initial page to RegistrationPage
    );
  }
}
