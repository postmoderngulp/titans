import 'package:flutter/material.dart';
import 'package:titans/Navigation/Navigate.dart';

class NotificateModel extends ChangeNotifier {
  bool isNotificate = false;
  void goToMenu(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.menuPath);
  }

  void goToScan(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.scanPath);
  }

  void goToNotificate(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.notificatePath);
  }

  void setVal() {
    isNotificate = !isNotificate;
    notifyListeners();
  }
}
