import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:asu/controllers/home-controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key}); // Unnamed constructor

  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Hello World')),
      body: Center(
        child: Obx(() => Text(
          homeController.message.value,
          style: TextStyle(fontSize: 24),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeController.updateMessage('Hello, GetX!'),
        child: Icon(Icons.update),
      ),
    );
  }
}