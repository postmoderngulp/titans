import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/BaseModel/scan_model.dart';
import 'package:titans/Style/button_style.dart';
import 'package:titans/Style/colors.dart';
import 'package:titans/Style/font_style.dart';

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScanModel(),
      child: const SubScan(),
    );
  }
}

class SubScan extends StatelessWidget {
  const SubScan({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ScanModel>();
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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/image/camera.svg'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Scan QR code',
                    style: FontStyle.titleMenu,
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              SizedBox(
                width: 272.w,
                child: Text(
                  'Scan the QR code and it automatically recognize it.',
                  textAlign: TextAlign.center,
                  style: FontStyle.inActiveRegisterButton,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Stack(
                children: [
                  Container(
                    width: 358.w,
                    height: 419.h,
                    decoration: const BoxDecoration(color: colors.dark),
                    child: Center(
                        child: SvgPicture.asset(
                      'assets/image/scan_back.svg',
                      width: 182.w,
                      height: 182.h,
                    )),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/image/left_top.svg'),
                      const Spacer(),
                      SvgPicture.asset('assets/image/right_top.svg'),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 385.h),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/image/left_bottom.svg'),
                        const Spacer(),
                        SvgPicture.asset('assets/image/right_bottom.svg'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const ShowQrButton(),
              SizedBox(
                height: 20.h,
              ),
              const CancelButton()
            ],
          ),
        ),
      )),
    );
  }
}

class ShowQrButton extends StatelessWidget {
  const ShowQrButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<ScanModel>();
    return SizedBox(
      width: 366.w,
      height: 54.h,
      child: ElevatedButton(
          style: StyleButton.next,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/image/qr.svg',
                width: 22.w,
                height: 22.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                'Show QR code',
                style: FontStyle.buttonBoarding,
              ),
            ],
          )),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<ScanModel>();
    return SizedBox(
      width: 366.w,
      height: 54.h,
      child: ElevatedButton(
          style: StyleButton.cancelButton,
          onPressed: () {},
          child: Text(
            'Cancel',
            style: FontStyle.cancel,
          )),
    );
  }
}
