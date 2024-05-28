import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfoliooo/components/colors.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1400,
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ābout.",
            style: TextStyle(color: const Color.fromRGBO(247, 241, 151, 1), fontSize: 100, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              Consttext.about,
              style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, top: 100),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(color: ConstColors.textcolor, shape: BoxShape.circle),
                    ),
                    Gap(10),
                    Text(
                      Consttext.firstyear,
                      style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf", fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 10),
                  child: Text(
                    Consttext.firsttext,
                    style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf"),
                  ),
                ),
                //second
                Gap(30),
                Row(
                  children: [
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(color: ConstColors.textcolor, shape: BoxShape.circle),
                    ),
                    Gap(10),
                    Text(
                      Consttext.secondyear,
                      style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf", fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 10, bottom: 20),
                  child: Text(
                    Consttext.secondtext,
                    style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf"),
                  ),
                ),
                Gap(30),
                //3rd
                Row(
                  children: [
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(color: ConstColors.textcolor, shape: BoxShape.circle),
                    ),
                    Gap(10),
                    Text(
                      Consttext.thridyear,
                      style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf", fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 210, top: 10, bottom: 20),
                  child: Text(
                    Consttext.thridtext,
                    style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
