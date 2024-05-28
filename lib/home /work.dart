import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:portfoliooo/components/alterdiaglog.dart';
import 'package:portfoliooo/components/colors.dart';
import 'package:portfoliooo/home%20/projectfigma.dart';
import 'package:portfoliooo/home%20/projectflutter.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1400,
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "work.",
            style: TextStyle(color: Color.fromRGBO(247, 241, 151, 1), fontSize: 100, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              Consttext.work,
              style: const TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf"),
            ),
          ),
          const Gap(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      AlterDiaglog(context, const Flutterphotos());
                    },
                    child: SizedBox(
                        height: 500,
                        width: 650,
                        //color: Colors.blue,
                        child: LottieBuilder.asset(
                          "assets/images/flutter.json",
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                  const Gap(15),
                  const Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate\ntristique quam felis. Id phasellus dui orci vulputate consequat nulla proin.\nId sit scelerisque neque, proin bibendum diam.",
                      style: TextStyle(fontSize: 16, fontFamily: "assets/font/Poppins-Medium.ttf"),
                    ),
                  ),
                ],
              ),
              const Gap(80),
              Column(
                children: [
                  //
                  GestureDetector(
                    onTap: () {
                      AlterDiaglog(context, const Figmaphotos());
                    },
                    child: SizedBox(
                        height: 500,
                        width: 650,
                        //color: Colors.blue,
                        child: LottieBuilder.asset(
                          "assets/images/figma.json",
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                  const Gap(15),
                  const Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet vulputate\ntristique quam felis. Id phasellus dui orci vulputate consequat nulla proin.\nId sit scelerisque neque, proin bibendum diam.",
                      style: TextStyle(fontSize: 16, fontFamily: "assets/font/Poppins-Medium.ttf"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
