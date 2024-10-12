import 'package:get/get.dart';
import 'package:klinik_shoes_project/module/homepage/controller/homepage_controller.dart';
import 'package:klinik_shoes_project/module/homepage/view/homepage_view.dart';

class LoginController {
  void login() {
    // Directly navigate to HomePageView
    Get.to(() => HomePageView(controller: HomePageController()));
  }

  // You can keep the methods for setting username and password if you need them later
  void setUsername(String username) {
    // You may choose to keep this or not since you're not validating
  }

  void setPassword(String password) {
    // You may choose to keep this or not since you're not validating
  }
}