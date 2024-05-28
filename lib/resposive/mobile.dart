import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliooo/components/colors.dart';
import 'package:portfoliooo/components/social.dart';
import 'package:portfoliooo/mobile/mobileabout.dart';
import 'package:portfoliooo/mobile/mobilecontact.dart';
import 'package:portfoliooo/mobile/mobileprofile.dart';
import 'package:portfoliooo/mobile/mobilework.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 248, 204, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(251, 248, 204, 1),
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Teja",
          style: TextStyle(color: ConstColors.textcolor, fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 20), child: Social()),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MobileProfile(),
            MobileAbout(),
            MobileWork(),
            MobileContact(),
          ],
        ),
      ),
    );
  }
}
