import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:titans/Domain/Models/AuthModels/onboard_model.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnBoardModel(),
      child: const subOnBoard(),
    );
  }
}

class subOnBoard extends StatefulWidget {
  const subOnBoard({super.key});

  @override
  State<subOnBoard> createState() => _subOnBoardState();
}

class _subOnBoardState extends State<subOnBoard> {
  late int _currentPage;
  final _controller = PageController();

  @override
  void initState() {
    _currentPage = 0;
    _controller.addListener(() => setState(() {
          _currentPage = _controller.page!.toInt();
        }));
    super.initState();
  }

  @override
  void dispose() {
    _currentPage = 0;
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.read<OnBoardModel>();
    return Container(
      color: colors.background,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.background,
          bottomSheet: Container(
            width: MediaQuery.of(context).size.width,
            height: 189.76.h,
            decoration: const BoxDecoration(color: colors.background),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  effect: WormEffect(
                    activeDotColor: colors.activeDot,
                    dotColor: colors.grey,
                    dotHeight: 12.h,
                    dotWidth: 12.w,
                  ),
                  controller: _controller,
                  count: 3,
                  onDotClicked: (index) => _controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                ),
                SizedBox(
                  height: 40.76.h,
                ),
                SizedBox(
                  width: 180.w,
                  height: 54.h,
                  child: ElevatedButton(
                      style: StyleButton.next,
                      onPressed: () => _currentPage != 2
                          ? _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn)
                          : model.goToRegister(context),
                      child: Text(
                        'Next',
                        style: FontStyle.buttonBoarding,
                      )),
                )
              ],
            ),
          ),
          body: Container(
            color: colors.background,
            padding: EdgeInsets.only(bottom: 189.76.h),
            child: PageView(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 93.h,
                    ),
                    SvgPicture.asset(
                      "assets/image/onboard_first.svg",
                      width: 332.w,
                      height: 369.h,
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Text(
                      'Trade anytime anywhere',
                      style: FontStyle.titleBoarding,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
                        textAlign: TextAlign.center,
                        style: FontStyle.subTitleBoarding,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 93.h,
                    ),
                    SvgPicture.asset(
                      "assets/image/onboard_second.svg",
                      width: 332.w,
                      height: 369.h,
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Text(
                      'Save and invest at the same time',
                      style: FontStyle.titleBoarding,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
                        textAlign: TextAlign.center,
                        style: FontStyle.subTitleBoarding,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 93.h,
                    ),
                    SvgPicture.asset(
                      "assets/image/onboard_three.svg",
                      width: 332.w,
                      height: 369.h,
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Text(
                      'Transact fast and easy',
                      style: FontStyle.titleBoarding,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
                        textAlign: TextAlign.center,
                        style: FontStyle.subTitleBoarding,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
