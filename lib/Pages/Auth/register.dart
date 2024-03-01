import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/AuthModels/register_model.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterModel(),
      child: const subRegister(),
    );
  }
}

class subRegister extends StatelessWidget {
  const subRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Container(
      color: colors.background,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.background,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                const SwitchButtonGroup(),
                SizedBox(
                  height: 40.h,
                ),
                model.isSignUp ? const SignUp() : const SignIn()
              ]),
        ),
      ),
    );
  }
}

class ServiceGroup extends StatelessWidget {
  const ServiceGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [FacebookButton(), Spacer(), GoogleButton()]);
  }
}

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 173.w,
        height: 54.h,
        child: ElevatedButton(
          style: StyleButton.service,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/image/facebook.svg'),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Facebook',
                style: FontStyle.service,
              ),
            ],
          ),
        ));
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 173.w,
        height: 54.h,
        child: ElevatedButton(
          style: StyleButton.service,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/image/google.svg'),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Google',
                style: FontStyle.service,
              ),
            ],
          ),
        ));
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign up',
            style: FontStyle.title,
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: [
              Text(
                'Email',
                style: FontStyle.label,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => model.setEmail(),
                child: Text(
                  model.isEmail ? 'Sign in with mobile' : 'Sign in with email',
                  style: FontStyle.mainLabel,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          model.isEmail ? const EmailField() : const PhoneField(),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Password',
            style: FontStyle.label,
          ),
          SizedBox(
            height: 12.h,
          ),
          const PasswordField(),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'Forgot password?',
            style: FontStyle.mainLabel,
          ),
          SizedBox(
            height: 40.h,
          ),
          const SignUpButton(),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              'Or login with ',
              style: FontStyle.inActiveRegisterButton,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const ServiceGroup(),
        ],
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign in',
            style: FontStyle.title,
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            children: [
              Text(
                'Email',
                style: FontStyle.label,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => model.setEmail(),
                child: Text(
                  model.isEmail ? 'Sign in with mobile' : 'Sign in with email',
                  style: FontStyle.mainLabel,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          model.isEmail ? const EmailField() : const PhoneField(),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Password',
            style: FontStyle.label,
          ),
          SizedBox(
            height: 12.h,
          ),
          const PasswordField(),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'Forgot password?',
            style: FontStyle.mainLabel,
          ),
          SizedBox(
            height: 40.h,
          ),
          const SignInButton(),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              'Or login with ',
              style: FontStyle.inActiveRegisterButton,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const ServiceGroup(),
          SizedBox(
            height: 55.h,
          ),
          !model.isLocalAuth
              ? SvgPicture.asset(
                  'assets/image/notFingerprint.svg',
                  width: 40.w,
                  height: 40.h,
                )
              : GestureDetector(
                  onTap: () => model.checkAuth(context),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/image/fingerprint.svg',
                      width: 40.w,
                      height: 40.h,
                    ),
                  ),
                ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              'Use fingerprint instead?',
              style: FontStyle.label,
            ),
          ),
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return SizedBox(
      width: 366.w,
      height: 54.h,
      child: ElevatedButton(
          style: StyleButton.next,
          onPressed: () => model.goToHomeScreen(context),
          child: Text(
            'Sign in',
            style: FontStyle.buttonBoarding,
          )),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: ElevatedButton(
            style: StyleButton.next,
            onPressed: () => model.goToSignUp(context),
            child: Text(
              'Sign up',
              style: FontStyle.buttonBoarding,
            )),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {},
          placeholder:
              model.isSignUp ? 'Please enter email' : 'Enter your email',
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

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.number,
          onChanged: (value) {},
          placeholder:
              model.isSignUp ? 'Please enter mobile' : 'Enter your mobile',
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

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return Center(
      child: SizedBox(
        width: 366.w,
        height: 54.h,
        child: CupertinoTextField(
          padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 12.h),
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {},
          placeholder:
              model.isSignUp ? 'Please enter password' : 'Enter your password',
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

class SwitchButtonGroup extends StatelessWidget {
  const SwitchButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 366.w,
        height: 46.h,
        decoration: BoxDecoration(
          color: colors.darkBack,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: const Row(
            children: [
              SignInService(),
              SignUpService(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInService extends StatelessWidget {
  const SignInService({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return SizedBox(
      width: 179.w,
      height: 38.h,
      child: ElevatedButton(
        style: model.isSignUp
            ? StyleButton.inActiveRegister
            : StyleButton.activeRegister,
        child: Text(
          "Sign in",
          style: model.isSignUp
              ? FontStyle.inActiveRegisterButton
              : FontStyle.activeRegisterButton,
        ),
        onPressed: () => model.setVal(),
      ),
    );
  }
}

class SignUpService extends StatelessWidget {
  const SignUpService({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<RegisterModel>();
    return SizedBox(
      width: 179.w,
      height: 38.h,
      child: ElevatedButton(
        style: model.isSignUp
            ? StyleButton.activeRegister
            : StyleButton.inActiveRegister,
        child: Text(
          "Sign up",
          style: model.isSignUp
              ? FontStyle.activeRegisterButton
              : FontStyle.inActiveRegisterButton,
        ),
        onPressed: () => model.setVal(),
      ),
    );
  }
}
