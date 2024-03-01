import 'package:flutter/cupertino.dart';
import 'package:titans/Navigation/Navigate.dart';

class SignUpModel extends ChangeNotifier {
  void goToVerification(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.verificationPath);
  }
}
