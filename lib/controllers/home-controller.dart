import 'package:get/get.dart';

class HomeController extends GetxController {

  var message = 'Hello, World!'.obs;


  void updateMessage(String newMessage) {
    message.value = newMessage;
  }
}

