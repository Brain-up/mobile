import 'package:brn_mobile/home/view/home_page.dart';
import 'package:brn_mobile/login/view/login_page.dart';
import 'package:brn_mobile/splash/view/splashscreen_stl.dart';
import 'package:brn_mobile/tocheckndel/firstpagewidget.dart';
import 'package:flutter/material.dart';

class RouterPage {
  static Route<dynamic> ongenerateRoute(RouteSettings settings) {
    var data = settings.arguments;
    switch (settings.name) {
      case RoutingConstants.loginScreen:
        return LoginPage.route();
      case RoutingConstants.firstPageScreen:
        return FirstPage.route();
      case RoutingConstants.splashScreen:
        return   SplashScreenWidgetStL.route();
      case RoutingConstants.homeScreen:
        return HomePage.route();
    }
  }
}

class RoutingConstants {
  static const String loginScreen = "/loginScreen";
  static const String splashScreen = "/splashScreen";
  static const String firstPageScreen = "/firstpage";
  static const String homeScreen = "/homeScreen";
}
