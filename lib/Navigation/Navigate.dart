import 'package:flutter/material.dart';
import 'package:titans/Pages/Auth/onboard.dart';
import 'package:titans/Pages/Auth/register.dart';
import 'package:titans/Pages/Auth/sign_up.dart';
import 'package:titans/Pages/Auth/success_auth.dart';
import 'package:titans/Pages/Auth/verificate.dart';
import 'package:titans/Pages/Base/home_screen.dart';
import 'package:titans/Pages/Base/main_base_screen.dart';
import 'package:titans/Pages/Base/menu.dart';
import 'package:titans/Pages/Base/notification.dart';
import 'package:titans/Pages/Base/scan.dart';

abstract class NavigatePaths {
  static const initPath = '/';
  static const registerPath = '/register';
  static const signUpPath = '/register/signUp';
  static const verificationPath = '/register/signUp/verificate';
  static const successPath = '/register/signUp/verificate/success';
  static const homeScreenPath = '/register/homeScreen';
  static const menuPath = '/register/homeScreen/menu';
  static const scanPath = '/register/homeScreen/scan';
  static const notificatePath = '/register/homeScreen/notificate';
}

class NavigateService {
  String initRoute = NavigatePaths.initPath;
  final routes = <String, Widget Function(BuildContext)>{
    NavigatePaths.initPath: (context) => const OnBoard(),
    NavigatePaths.registerPath: (context) => const Register(),
    NavigatePaths.signUpPath: (context) => const SignUpWidget(),
    NavigatePaths.verificationPath: (context) => const Verificate(),
    NavigatePaths.successPath: (context) => const SuccessAuth(),
    NavigatePaths.homeScreenPath: (context) => MainSreenBase(),
    NavigatePaths.menuPath: (context) => const Menu(),
    NavigatePaths.scanPath: (context) => const Scan(),
    NavigatePaths.notificatePath: (context) => const Notificate(),
  };
}
