import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Entity/behavior.dart';
import 'package:titans/Domain/Models/BaseModel/HomeScreenModel.dart';
import 'package:titans/Pages/permanent/app_bar.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenModel(),
      child: const SubHomeScreen(),
    );
  }
}

class SubHomeScreen extends StatelessWidget {
  const SubHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeScreenModel>();
    return Container(
      color: colors.background,
      child: SafeArea(
          child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 95.h),
          child: const Appbar(),
        ),
        backgroundColor: colors.background,
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: model.listMenu.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              color: colors.dark,
                              border:
                                  Border.all(width: 0.01, color: Colors.white)),
                          width: 92.w,
                          height: 92.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              model.listMenu[index].image,
                              Text(
                                model.listMenu[index].label,
                                style: FontStyle.labelMenu,
                              ),
                            ],
                          ),
                        )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 21.h,
                        ),
                        const P2pTradingBanner(),
                        SizedBox(
                          height: 8.34.h,
                        ),
                        const CreditBanner(),
                        SizedBox(
                          height: 27.34.h,
                        ),
                        Text(
                          'Recent Coin',
                          style: FontStyle.titleHome,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        const Recent(),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Top coins',
                          style: FontStyle.titleHome,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        const Recent(),
                        SizedBox(
                          height: 100.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class Recent extends StatelessWidget {
  const Recent({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeScreenModel>();
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: const recentItem()),
      ),
    );
  }
}

class recentItem extends StatelessWidget {
  const recentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      height: 118.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          spreadRadius: 1,
          blurRadius: 15,
          offset: const Offset(5, 5),
        ),
        BoxShadow(
            color: Colors.grey.shade100,
            offset: const Offset(5, 5),
            blurRadius: 15,
            spreadRadius: 1),
      ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '40,059.83',
                  style: FontStyle.priceBanner,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/image/bitcoin.svg',
                  width: 24.w,
                  height: 24.h,
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BTC/BUSD',
                  style: FontStyle.nameCurrency,
                ),
                SizedBox(
                  height: 4.w,
                ),
                Text(
                  '+0.81%',
                  style: FontStyle.percentBanner,
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            SvgPicture.asset(
              'assets/image/longUp.svg',
              width: 142.5.w,
              height: 31.h,
            ),
          ],
        ),
      ),
    );
  }
}

class P2pTradingBanner extends StatelessWidget {
  const P2pTradingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 366.w,
        height: 76.h,
        decoration: BoxDecoration(
            color: colors.backgroundBanner,
            borderRadius: BorderRadius.circular(16)),
        child: Row(children: [
          SizedBox(
            width: 14.w,
          ),
          SvgPicture.asset(
            'assets/image/Rocket.svg',
            width: 56.5.w,
            height: 52.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'P2P Trading',
                  style: FontStyle.titleBanner,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Bank Transfer, Paypal Revolut...',
                  style: FontStyle.subTitleBanner,
                ),
              ],
            ),
          ),
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_right_rounded,
            color: colors.grey,
            size: 30.w,
          ),
          SizedBox(
            width: 18.w,
          ),
        ]),
      ),
    );
  }
}

class CreditBanner extends StatelessWidget {
  const CreditBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 366.w,
        height: 76.h,
        decoration: BoxDecoration(
            color: colors.backgroundBanner,
            borderRadius: BorderRadius.circular(16)),
        child: Row(children: [
          SizedBox(
            width: 14.w,
          ),
          SvgPicture.asset(
            'assets/image/credit.svg',
            width: 56.5.w,
            height: 52.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit/Debit Card',
                  style: FontStyle.titleBanner,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Visa, Mastercard',
                  style: FontStyle.subTitleBanner,
                ),
              ],
            ),
          ),
          const Spacer(),
          Icon(
            Icons.keyboard_arrow_right_rounded,
            color: colors.grey,
            size: 30.w,
          ),
          SizedBox(
            width: 18.w,
          ),
        ]),
      ),
    );
  }
}
