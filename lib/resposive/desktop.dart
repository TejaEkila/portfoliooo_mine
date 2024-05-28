import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfoliooo/components/colors.dart';
import 'package:portfoliooo/components/social.dart';
import 'package:portfoliooo/home%20/about.dart';
import 'package:portfoliooo/home%20/contact.dart';
import 'package:portfoliooo/home%20/profile.dart';
import 'package:portfoliooo/home%20/work.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final GlobalKey _home = GlobalKey();
  final GlobalKey _about = GlobalKey();
  final GlobalKey _work = GlobalKey();
  final GlobalKey _contact = GlobalKey();

  void _homescroll() {
    Scrollable.ensureVisible(_home.currentContext!, duration: Duration(seconds: 1), curve: Curves.linear);
  }

  void _aboutscroll() {
    Scrollable.ensureVisible(_about.currentContext!, duration: Duration(seconds: 1), curve: Curves.linear);
  }

  void _workscroll() {
    Scrollable.ensureVisible(_work.currentContext!, duration: Duration(seconds: 1), curve: Curves.linear);
  }

  void _contactscroll() {
    Scrollable.ensureVisible(_contact.currentContext!, duration: Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 248, 204, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color.fromRGBO(251, 248, 204, 1),
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 180, top: 30),
          child: Text(
            "Teja",
            style: TextStyle(color: ConstColors.textcolor, fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: _homescroll,
                  child: Text(
                    "Home",
                    style: TextStyle(color: ConstColors.textcolor, fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Gap(71),
                GestureDetector(
                  onTap: _aboutscroll,
                  child: Text(
                    "About",
                    style: TextStyle(color: ConstColors.textcolor, fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Gap(71),
                GestureDetector(
                  onTap: _workscroll,
                  child: Text(
                    "Work",
                    style: TextStyle(color: ConstColors.textcolor, fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Gap(71),
                GestureDetector(
                  onTap: _contactscroll,
                  child: Text(
                    "Contact",
                    style: TextStyle(color: ConstColors.textcolor, fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
                Gap(300),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Social(),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Profile(
              key: _home,
            ),
            About(
              key: _about,
            ),
            Work(
              key: _work,
            ),
            Contact(
              key: _contact,
            ),
          ],
        ),
      ),
    );
  }
}
