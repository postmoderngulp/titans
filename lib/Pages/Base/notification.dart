import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/BaseModel/notification_model.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class Notificate extends StatelessWidget {
  const Notificate({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificateModel(),
      child: const SubNotification(),
    );
  }
}

class SubNotification extends StatelessWidget {
  const SubNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificateModel>();
    return Container(
      color: colors.background,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 75.h,
            elevation: 0,
            backgroundColor: colors.dark,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () => model.goToMenu(context),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 36.w,
                  height: 36.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/avatar.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            actions: [
              SvgPicture.asset(
                'assets/image/searchAction.svg',
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(
                width: 18.w,
              ),
              GestureDetector(
                onTap: () => model.goToScan(context),
                child: SvgPicture.asset(
                  'assets/image/scannerAction.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              SizedBox(
                width: 18.w,
              ),
              GestureDetector(
                onTap: () => model.goToNotificate(context),
                child: SvgPicture.asset(
                  'assets/image/notificateAction.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
            ],
          ),
          backgroundColor: colors.background,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Notifications',
                        style: FontStyle.appBarTitle,
                      ),
                      const Spacer(),
                      Text(
                        'Mark Read All',
                        style: FontStyle.inActiveRegisterButton,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                        onTap: () => model.setVal(),
                        child: SvgPicture.asset(
                          'assets/image/filter.svg',
                          width: 22.w,
                          height: 22.h,
                        ),
                      ),
                    ],
                  ),
                ),
                model.isNotificate
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 26.h,
                          ),
                          const ListNotification(),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 236.17.h,
                          ),
                          Center(
                            child: SvgPicture.asset(
                              'assets/image/no_notification.svg',
                              width: 97.w,
                              height: 136.h,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'You have no notifications',
                            style: FontStyle.centerInfo,
                          ),
                          Text(
                            'lorem ipsum lorem ipsum',
                            style: FontStyle.subCenterInfo,
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

class ListNotification extends StatelessWidget {
  const ListNotification({super.key});
  @override
  Widget build(BuildContext context) {
    final model = context.watch<NotificateModel>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 24,
        itemBuilder: (BuildContext context, int index) => Padding(
            padding: EdgeInsets.only(bottom: 20.h),
            child: NotificationItem(index: index)),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  int index;
  NotificationItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Withdrawal Successful',
              style: FontStyle.titleNotificate,
            ),
            SizedBox(
              width: 6.w,
            ),
            SvgPicture.asset(
              'assets/image/done.svg',
              width: 13.w,
              height: 13.h,
            )
          ],
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          'You have successfully withdrawed lorem ipsum dolor sit...',
          style: FontStyle.inActiveRegisterButton,
        ),
      ],
    );
  }
}
