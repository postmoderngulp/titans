import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/AuthModels/sign_up_model.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpModel(),
      child: const SubSignUp(),
    );
  }
}

class SubSignUp extends StatelessWidget {
  const SubSignUp({super.key});

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
                    'Sign Up',
                    style: FontStyle.titleTop,
                  ),
                ],
              ),
              SizedBox(
                height: 37.h,
              ),
              Text(
                'Register with mobile',
                style: FontStyle.title,
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Please type your number, then we’ll send a verification code for authentication.',
                style: FontStyle.label,
              ),
              SizedBox(
                height: 57.h,
              ),
              Text(
                'Mobile Number',
                style: FontStyle.label,
              ),
              SizedBox(
                height: 12.h,
              ),
              const PhoneField(),
              SizedBox(
                height: 60.h,
              ),
              const SendOtpButton()
            ],
          ),
        ),
      )),
    );
  }
}

class SendOtpButton extends StatelessWidget {
  const SendOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: ElevatedButton(
            style: StyleButton.next,
            onPressed: () => model.goToVerification(context),
            child: Text(
              'Send OTP',
              style: FontStyle.buttonBoarding,
            )),
      ),
    );
  }
}

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<SignUpModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.number,
          onChanged: (value) {},
          placeholder: 'Enter your mobile',
          placeholderStyle: FontStyle.inActiveRegisterButton,
          decoration: const BoxDecoration(
            color: colors.dark,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}
