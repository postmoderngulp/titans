import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/AuthModels/success_model.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class SuccessAuth extends StatelessWidget {
  const SuccessAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SuccessModel(),
      child: const SubSuccessAuth(),
    );
  }
}

class SubSuccessAuth extends StatelessWidget {
  const SubSuccessAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.background,
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colors.background,
        body: Column(
          children: [
            SizedBox(
              height: 107.39.h,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/image/success_auth.svg',
                width: 106.w,
                height: 249.h,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Text(
                'Your account has been successfully created!',
                textAlign: TextAlign.center,
                style: FontStyle.title,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            const StartedButton()
          ],
        ),
      )),
    );
  }
}

class StartedButton extends StatelessWidget {
  const StartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<SuccessModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: ElevatedButton(
            style: StyleButton.next,
            onPressed: () => model.goToHomeScreen(context),
            child: Text(
              'Get Started',
              style: FontStyle.buttonBoarding,
            )),
      ),
    );
  }
}
