import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:portfoliooo/components/alterdiaglog.dart';
import 'package:portfoliooo/components/colors.dart';
import 'package:portfoliooo/home%20/projectfigma.dart';
import 'package:portfoliooo/home%20/projectflutter.dart';

class MobileWork extends StatelessWidget {
  const MobileWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "work.",
            style: TextStyle(color: const Color.fromRGBO(247, 241, 151, 1), fontSize: 80, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              Consttext.work,
              style: TextStyle(fontSize: 20, fontFamily: "assets/font/Poppins-Medium.ttf"),
            ),
          ),
          Gap(30),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  AlterDiaglog(context, Flutterphotos());
                },
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  height: 350,
                  width: 400,
                  child: LottieBuilder.asset(
                    "assets/images/flutter.json",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate\ntristique quam felis. Id phasellus dui orci vulputate consequat nulla proin.\nId sit scelerisque neque, proin bibendum diam.",
                  style: TextStyle(fontSize: 16, fontFamily: "assets/font/Poppins-Medium.ttf"),
                ),
              ),
            ],
          ),
          Gap(30),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  AlterDiaglog(context, Figmaphotos());
                },
                child: Container(
                  decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  height: 350,
                  width: 400,
                  child: LottieBuilder.asset(
                    "assets/images/figma.json",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate\ntristique quam felis. Id phasellus dui orci vulputate consequat nulla proin.\nId sit scelerisque neque, proin bibendum diam.",
                  style: TextStyle(fontSize: 16, fontFamily: "assets/font/Poppins-Medium.ttf"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
