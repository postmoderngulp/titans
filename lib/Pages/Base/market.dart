import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/BaseModel/market_model.dart';
import 'package:titans/Pages/permanent/app_bar.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class Market extends StatelessWidget {
  const Market({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MarketModel(),
      child: const SubMarket(),
    );
  }
}

class SubMarket extends StatefulWidget {
  const SubMarket({super.key});

  @override
  State<SubMarket> createState() => _SubMarketState();
}

class _SubMarketState extends State<SubMarket> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 95.h),
        child: const Appbar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 366.w,
                height: 46.h,
                decoration: const BoxDecoration(
                    color: colors.dark,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: TabBar(
                    dividerColor: Colors.transparent,
                    splashBorderRadius:
                        const BorderRadius.all(Radius.circular(12)),
                    padding: const EdgeInsets.all(4),
                    indicatorColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    labelColor: Colors.white,
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelStyle: FontStyle.mainLabel,
                    unselectedLabelColor: Colors.grey,
                    indicator: const BoxDecoration(
                        color: colors.background,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    tabs: const [
                      Tab(
                        text: "Convert",
                      ),
                      Tab(
                        text: "Spot",
                      ),
                      Tab(
                        text: "Margin",
                      ),
                      Tab(
                        text: "Fiat",
                      ),
                    ]),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 500.h,
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: _tabController,
                  children: const <Widget>[Convert(), Spot(), Margin(), Flat()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class addFavoriteButton extends StatelessWidget {
  const addFavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 366.w,
      height: 60.h,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(colors.transGrey),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/image/add-circle.svg'),
              const Text('Add Favorite'),
            ],
          )),
    );
  }
}

class Convert extends StatelessWidget {
  const Convert({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          shrinkWrap: true,
          itemCount: 1200,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: const CryptoItem(),
          ),
          separatorBuilder: (BuildContext context, int index) => Divider(
            height: 0.1.w,
            color: colors.grey,
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        const addFavoriteButton()
      ],
    );
  }
}

class Spot extends StatelessWidget {
  const Spot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Margin extends StatelessWidget {
  const Margin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Flat extends StatelessWidget {
  const Flat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CryptoItem extends StatelessWidget {
  const CryptoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset('assets/image/bitcoin.svg'),
        SizedBox(
          width: 13.w,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bitcoin',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'BTC',
              style: TextStyle(color: colors.grey),
            ),
          ],
        ),
        const Spacer(),
        SvgPicture.asset('assets/image/up.svg'),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '32,697.05',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '+0.81%',
              style: FontStyle.percentBanner,
            ),
          ],
        ),
      ],
    );
  }
}
