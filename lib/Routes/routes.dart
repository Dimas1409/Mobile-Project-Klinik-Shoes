import 'package:get/get.dart';
import 'package:klinik_shoes_project/module/cart_page/view/cart_page_view.dart';
import 'package:klinik_shoes_project/module/categories_page/view/simple_cleaning_view.dart';
import 'package:klinik_shoes_project/module/login_page/view/login_page_view.dart';
import 'package:klinik_shoes_project/module/signup_page/view/signup_page_view.dart';
import 'package:klinik_shoes_project/module/welcome_page/view/welcome_page_view.dart';
import 'package:klinik_shoes_project/module/login_page/controller/login_page_controller.dart';
import 'package:klinik_shoes_project/module/signup_page/controller/signup_page_controller.dart';
import 'package:klinik_shoes_project/module/homepage/view/homepage_view.dart';
import 'package:klinik_shoes_project/module/homepage/controller/homepage_controller.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String cart = '/cart';
  static const String simple_cleaning = '/simple';

  // Getter untuk rute awal
  static String getHomeRoute() => welcome;

  // Daftar rute
  static List<GetPage> routes = [
    GetPage(
      page: () => WelcomePage(),
      name: welcome,
    ),
    GetPage(
      page: () => LoginPageView(controller: LoginController()),
      name: login,
    ),
    GetPage(
      page: () => SignupPageView(controller: SignupPageController()),
      name: signup,
    ),
    GetPage(
      page: () => HomePageView(controller: HomePageController()), // Perbaikan di sini
      name: home,
    ),
    GetPage(
      page: () => CartPage() ,
      name: cart
    ),
    GetPage(
      page: () => SimpleCleaningView() ,
      name: simple_cleaning)
  ];
}
