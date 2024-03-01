import 'package:flutter/material.dart';
import 'package:titans/Navigation/Navigate.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

class RegisterModel extends ChangeNotifier {
  bool isSignUp = false;
  bool isEmail = true;
  bool isLocalAuth = false;
  late LocalAuthentication _auth;

  RegisterModel() {
    _setup();
  }

  _setup() async {
    _auth = LocalAuthentication();
    isLocalAuth = await canAuth();
    notifyListeners();
  }

  Future<bool> canAuth() async =>
      await _auth.canCheckBiometrics || await _auth.isDeviceSupported();

  void checkAuth(BuildContext context) async {
    bool val = await _Auth();
    if (val) goToHomeScreen(context);
  }

  Future<bool> _Auth() async {
    try {
      return await _auth.authenticate(
          localizedReason: 'Get into to the app',
          authMessages: [
            const AndroidAuthMessages(
              signInTitle: 'Authentication required',
              cancelButton: 'No thanks',
            ),
            const IOSAuthMessages(
              cancelButton: 'No thanks',
            ),
          ],
          options: const AuthenticationOptions(biometricOnly: true));
    } catch (e) {
      print('error $e');
      return false;
    }
  }

  void setVal() {
    isSignUp = !isSignUp;
    notifyListeners();
  }

  void setEmail() {
    isEmail = !isEmail;
    notifyListeners();
  }

  void goToSignUp(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.signUpPath);
  }

  void goToHomeScreen(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.homeScreenPath);
  }
}
