import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Entity/behavior.dart';
import 'package:titans/Domain/Models/BaseModel/menu_model.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuModel(),
      child: const SubMenu(),
    );
  }
}

class SubMenu extends StatelessWidget {
  const SubMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colors.background,
      child: SafeArea(
          child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 160.h),
            child: const CustomAppBar()),
        backgroundColor: colors.background,
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    'Common',
                    style: FontStyle.titleMenu,
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Common(),
                  SizedBox(
                    height: 22.h,
                  ),
                  Text(
                    'Trade',
                    style: FontStyle.titleMenu,
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  const Trade(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Finance',
                    style: FontStyle.titleMenu,
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  const Finance(),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}

class Finance extends StatelessWidget {
  const Finance({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<MenuModel>();
    return Wrap(
      children: List.generate(
          model.listFinance.length,
          (index) => FinanceItem(
                index: index,
              )),
    );
  }
}

class FinanceItem extends StatelessWidget {
  int index;
  FinanceItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MenuModel>();
    return SizedBox(
      width: 90.w,
      height: 90.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 34.w, height: 34.h, child: model.listFinance[index].image),
          Text(
            model.listFinance[index].label,
            style: FontStyle.labelMenu,
          ),
        ],
      ),
    );
  }
}

class Trade extends StatelessWidget {
  const Trade({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<MenuModel>();
    return Wrap(
      children: List.generate(
          model.listTrade.length,
          (index) => TradeItem(
                index: index,
              )),
    );
  }
}

class TradeItem extends StatelessWidget {
  int index;
  TradeItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MenuModel>();
    return SizedBox(
      width: 90.w,
      height: 90.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 34.w, height: 34.h, child: model.listTrade[index].image),
          Text(
            model.listTrade[index].label,
            style: FontStyle.labelMenu,
          ),
        ],
      ),
    );
  }
}

class Common extends StatelessWidget {
  const Common({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<MenuModel>();
    return Wrap(
      children: List.generate(
          model.listCommon.length,
          (index) => CommonItem(
                index: index,
              )),
    );
  }
}

class CommonItem extends StatelessWidget {
  int index;
  CommonItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MenuModel>();
    return SizedBox(
      width: 90.w,
      height: 90.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 34.w, height: 34.h, child: model.listCommon[index].image),
          Text(
            model.listCommon[index].label,
            style: FontStyle.labelMenu,
          ),
        ],
      ),
    );
  }
}

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<MenuModel>();
    return SizedBox(
      width: 116.w,
      height: 33.h,
      child: ElevatedButton(
          style: StyleButton.next,
          onPressed: () {},
          child: Text(
            'Edit Profile',
            style: FontStyle.nameCurrency,
          )),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: colors.dark),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_back,
                    color: colors.grey,
                    size: 24.w,
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Text(
                  'Menu',
                  style: FontStyle.appBarTitle,
                ),
                const Spacer(),
                SvgPicture.asset(
                  'assets/image/moreInfo.svg',
                  width: 2.w,
                  height: 10.h,
                ),
                SizedBox(
                  width: 24.w,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 43.w,
                  height: 43.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/avatar.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 11.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User 1234',
                      style: FontStyle.appBarTitle,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ID: 1234567890',
                          style: FontStyle.inActiveRegisterButton,
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        SvgPicture.asset(
                          'assets/image/copy.svg',
                          width: 9.w,
                          height: 11.h,
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const EditProfileButton(),
                SizedBox(
                  width: 24.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
