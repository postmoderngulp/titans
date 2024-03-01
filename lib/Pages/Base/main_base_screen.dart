import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titans/Pages/Base/activity.dart';
import 'package:titans/Pages/Base/home_screen.dart';
import 'package:titans/Pages/Base/market.dart';
import 'package:titans/Pages/Base/trade.dart';
import 'package:titans/Pages/Base/wallet.dart';
import 'package:titans/Style/colors.dart';

class MainSreenBase extends StatefulWidget {
  int selectIndex = 0;
  MainSreenBase({super.key});

  @override
  State<MainSreenBase> createState() => _mainSreenCompanyState();
}

class _mainSreenCompanyState extends State<MainSreenBase> {
  final List<Widget> _tabs = [
    const HomeScreen(),
    const Market(),
    const TradeScreen(),
    const Activity(),
    const Wallet(),
  ];

  void tapBar(int index) {
    setState(() {
      widget.selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      body: _tabs[widget.selectIndex],
      bottomNavigationBar: SizedBox(
        height: 65.h,
        child: Theme(
          data: ThemeData(
            splashFactory: NoSplash.splashFactory,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedLabelStyle: const TextStyle(color: colors.grey),
            backgroundColor: colors.background,
            onTap: tapBar,
            currentIndex: widget.selectIndex,
            selectedItemColor: colors.main,
            unselectedItemColor: colors.grey,
            selectedLabelStyle: const TextStyle(color: colors.main),
            items: [
              BottomNavigationBarItem(
                backgroundColor: colors.background,
                icon: SvgPicture.asset(
                  'assets/image/home.svg',
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                      widget.selectIndex == 0 ? colors.main : colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                backgroundColor: colors.background,
                icon: SvgPicture.asset(
                  'assets/image/shopping-bag.svg',
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                      widget.selectIndex == 1 ? colors.main : colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                backgroundColor: colors.background,
                icon: SvgPicture.asset(
                  'assets/image/money-send.svg',
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                      widget.selectIndex == 2 ? colors.main : colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                backgroundColor: colors.background,
                icon: SvgPicture.asset(
                  'assets/image/receipt.svg',
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                      widget.selectIndex == 3 ? colors.main : colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                backgroundColor: colors.background,
                icon: SvgPicture.asset(
                  'assets/image/empty-wallet.svg',
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                      widget.selectIndex == 4 ? colors.main : colors.grey,
                      BlendMode.srcIn),
                ),
                label: 'Главная',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
