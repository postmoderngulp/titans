import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:titans/Domain/Models/BaseModel/app_bar_model.dart';
import 'package:titans/Style/colors.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppBarModel(),
      child: const SubAppBar(),
    );
  }
}

class SubAppBar extends StatelessWidget {
  const SubAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<AppBarModel>();
    return AppBar(
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
    );
  }
}
