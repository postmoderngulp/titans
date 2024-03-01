import 'package:flutter/material.dart';
import 'package:titans/Navigation/Navigate.dart';

class OnBoardModel extends ChangeNotifier {
  void goToRegister(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.registerPath);
  }
}
