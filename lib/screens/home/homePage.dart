import 'package:cyberspace/screens/home/mainHomePage.dart';
import 'package:cyberspace/screens/pieChatPage/pieChatPage.dart';
import 'package:cyberspace/screens/sendMoneyPage/sendMoneyPage.dart';
import 'package:cyberspace/settingsPage/SettingsPage.dart';
import 'package:cyberspace/walletPage/walletPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {

  static const routeName = '/landing_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  bool _changeSendMoneyColour = false;
  bool _changeHomeColour = true;
  bool _changeSettingsColour = false;
  bool _changeWalletColour = false;
  bool _changeReportColour = false;

  final List<Widget> _children = [
    MainHomePage(),
    WalletPage(),//TeamsPage Teams
    SendMoneyPage(),
    PieChatPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    final String walletAsset = 'assets/svg_files/wallets.svg';
    final String homeAsset = 'assets/svg_files/home.svg';
    final String sendMoneyAsset = 'assets/svg_files/send.svg';
    final String reportAsset = 'assets/svg_files/reports.svg';
    final String settingsAsset = 'assets/svg_files/settings.svg';

    final Widget homeSvg = SvgPicture.asset(
        homeAsset,
        color: _changeHomeColour ? Color(0xff613EEA) : null,
        semanticsLabel: 'Home'
    );

    final Widget sendMoneySvg = SvgPicture.asset(
         sendMoneyAsset,
        color: _changeSendMoneyColour ? Color(0xff613EEA) : Color(0xffA6AAB4),
        semanticsLabel: 'Wallet'
    );

    final Widget walletSvg = SvgPicture.asset(
        walletAsset,
        color: _changeWalletColour ? Color(0xff613EEA) : null,
        semanticsLabel: 'Send Money'
    );

    final Widget reportSvg = SvgPicture.asset(
        reportAsset,
        color: _changeReportColour ? Color(0xff613EEA) : null,
        semanticsLabel: 'Reports'
    );

    final Widget settingSvg = SvgPicture.asset(
        settingsAsset,
        color: _changeSettingsColour ? Color(0xff613EEA) : null,
        semanticsLabel: 'Settings'
    );

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Container(
            child: _children[_currentIndex],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                unselectedWidgetColor: Color(0xff613EEA)),
            child: BottomNavigationBar(
              onTap: onItemTapped,
              unselectedItemColor: Colors.white,
              selectedItemColor: Color(0xff613EEA),
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                    label: "Home",
                    icon: homeSvg
                ),
                BottomNavigationBarItem(
                  label: "Wallet",
                  icon: walletSvg,
                ),
                BottomNavigationBarItem(
                    label: "Send Money",
                    icon: sendMoneySvg
                ),
                BottomNavigationBarItem(
                  label: "Reports",
                  icon: reportSvg,
                ),
                BottomNavigationBarItem(
                  label: "Settings",
                  icon: settingSvg,
                )
              ],
            ),
          ),
        ));
  }

  onItemTapped(int index) {
    print("index $index tapped");

    switch(index){
      case 0:
        _changeHomeColour = true;
        _changeSendMoneyColour = false;
        _changeReportColour = false;
        _changeWalletColour = false;
        _changeSettingsColour = false;
        break;
      case 1:
         _changeWalletColour= true;
        _changeSendMoneyColour = false;
        _changeHomeColour = false;
        _changeReportColour = false;
         _changeSettingsColour = false;
        break;
      case 2:
        _changeSendMoneyColour = true;
        _changeHomeColour = false;
        _changeSettingsColour = false;
        _changeReportColour = false;
        _changeWalletColour = false;
        break;
      case 3:
         _changeReportColour= true;
        _changeSendMoneyColour = false;
        _changeHomeColour = false;
        _changeSettingsColour = false;
         _changeWalletColour = false;
        break;
      case 4:
         _changeSettingsColour= true;
        _changeWalletColour = false;
        _changeSendMoneyColour = false;
        _changeHomeColour = false;
         _changeReportColour = false;
        break;
    }

    setState(() {
      _currentIndex = index;
    });
  }
}
