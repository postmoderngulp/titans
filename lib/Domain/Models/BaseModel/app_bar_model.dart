import 'package:flutter/material.dart';
import 'package:titans/Navigation/Navigate.dart';

class AppBarModel extends ChangeNotifier {
  void goToMenu(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.menuPath);
  }

  void goToScan(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.scanPath);
  }

  void goToNotificate(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.notificatePath);
  }
}
