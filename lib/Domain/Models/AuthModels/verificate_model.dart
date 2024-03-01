import 'package:flutter/cupertino.dart';
import 'package:titans/Navigation/Navigate.dart';

class VerificateModel extends ChangeNotifier {
  String code = "";

  void setCode(String num, BuildContext context) {
    code += num;
    if (code.length == 4) goToSuccessAuth(context);
  }

  void goToSuccessAuth(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.successPath);
  }
}
