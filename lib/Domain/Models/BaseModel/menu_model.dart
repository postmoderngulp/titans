import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titans/Domain/Entity/menu.dart';
import 'package:titans/Navigation/Navigate.dart';

class MenuModel extends ChangeNotifier {
  List<menu> listCommon = [
    menu(
        image: SvgPicture.asset(
          'assets/image/transfer.svg',
        ),
        label: 'Transfer',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/deposit.svg',
        ),
        label: 'Deposit',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/orders.svg',
        ),
        label: 'Orders',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/referral.svg',
        ),
        label: 'Referral',
        path: ''),
  ];

  List<menu> listTrade = [
    menu(
        image: SvgPicture.asset(
          'assets/image/convert.svg',
        ),
        label: 'Convert',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/spot.svg',
        ),
        label: 'Spot',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/margin.svg',
        ),
        label: 'Margin',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/trading.svg',
        ),
        label: 'Grid Trading',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/swap.svg',
        ),
        label: 'Liquid Swap',
        path: ''),
  ];

  List<menu> listFinance = [
    menu(
        image: SvgPicture.asset(
          'assets/image/savings.svg',
        ),
        label: 'Savings',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/staking.svg',
        ),
        label: 'Staking',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/pay.svg',
        ),
        label: 'Pay',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/crypto_loans.svg',
        ),
        label: 'Crypto Loans',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/pool.svg',
        ),
        label: 'Pool',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/eth2.svg',
        ),
        label: 'ETH 2.0',
        path: ''),
    menu(
        image: SvgPicture.asset(
          'assets/image/launchpad.svg',
        ),
        label: 'Launchpad',
        path: ''),
  ];

  void goToEditProfile(BuildContext context) {
    Navigator.of(context).pushNamed(NavigatePaths.homeScreenPath);
  }
}
