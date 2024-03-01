import 'package:flutter/cupertino.dart';
import 'package:titans/Navigation/Navigate.dart';

class SuccessModel extends ChangeNotifier {
  void goToHomeScreen(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.homeScreenPath);
  }
}
