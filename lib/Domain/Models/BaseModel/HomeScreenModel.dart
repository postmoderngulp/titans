import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titans/Domain/Entity/menu.dart';
import 'package:titans/Navigation/Navigate.dart';

class HomeScreenModel extends ChangeNotifier {
  List<menu> listMenu = [
    menu(
        image: SvgPicture.asset(
          'assets/image/deposit.svg',
        ),
        label: 'Deposit',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/referral.svg',
        ),
        label: 'Referral',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/trading.svg',
        ),
        label: 'Grid Trading',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/margin.svg',
        ),
        label: 'Margin',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/launchpad.svg',
        ),
        label: 'Launchpad',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/savings.svg',
        ),
        label: 'Savings',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/swap.svg',
        ),
        label: 'Liquid Swap',
        path: NavigatePaths.initPath),
    menu(
        image: SvgPicture.asset(
          'assets/image/more.svg',
        ),
        label: 'More',
        path: NavigatePaths.initPath),
  ];
}
