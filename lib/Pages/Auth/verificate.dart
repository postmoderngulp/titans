import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/AuthModels/verificate_model.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/font_style.dart';
import 'package:titans/Style/colors.dart';

class Verificate extends StatelessWidget {
  const Verificate({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VerificateModel(),
      child: const SubVerificate(),
    );
  }
}

class SubVerificate extends StatelessWidget {
  const SubVerificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.background,
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: colors.background,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: SvgPicture.asset(
                      'assets/image/backArrow.svg',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Verification',
                    style: FontStyle.titleTop,
                  ),
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              Text(
                'Enter your code',
                style: FontStyle.title,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Please type the code we sent to',
                style: FontStyle.label,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                ' +1 234 567 8900',
                style: FontStyle.mainLabel,
              ),
              SizedBox(
                height: 40.h,
              ),
              const FieldGroup(),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text(
                  'Resend code (30)',
                  style: FontStyle.label,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Center(
                child: Text(
                  'Resend Link',
                  style: FontStyle.mainLabel,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              const ContinueButton()
            ],
          ),
        ),
      )),
    );
  }
}

class FieldGroup extends StatelessWidget {
  const FieldGroup({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<VerificateModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 60.w,
            height: 54.h,
            child: CupertinoTextField(
              style: FontStyle.title,
              textAlign: TextAlign.center,
              autofocus: true,
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                model.setCode(value, context);
                FocusScope.of(context).nextFocus();
              },
              decoration: const BoxDecoration(
                color: colors.dark,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          SizedBox(
            width: 32.w,
          ),
          SizedBox(
            width: 60.w,
            height: 54.h,
            child: CupertinoTextField(
              style: FontStyle.title,
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                model.setCode(value, context);
                FocusScope.of(context).nextFocus();
              },
              decoration: const BoxDecoration(
                color: colors.dark,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          SizedBox(
            width: 32.w,
          ),
          SizedBox(
            width: 60.w,
            height: 54.h,
            child: CupertinoTextField(
              style: FontStyle.title,
              textAlign: TextAlign.center,
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                model.setCode(value, context);
                FocusScope.of(context).nextFocus();
              },
              decoration: const BoxDecoration(
                color: colors.dark,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
          SizedBox(
            width: 32.w,
          ),
          SizedBox(
            width: 60.w,
            height: 54.h,
            child: CupertinoTextField(
              style: FontStyle.title,
              onEditingComplete: () => FocusScope.of(context).unfocus(),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                model.setCode(value, context);
                FocusScope.of(context).unfocus();
              },
              decoration: const BoxDecoration(
                color: colors.dark,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<VerificateModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: ElevatedButton(
            style: StyleButton.next,
            onPressed: () => model.goToSuccessAuth(context),
            child: Text(
              'Continue',
              style: FontStyle.buttonBoarding,
            )),
      ),
    );
  }
}
