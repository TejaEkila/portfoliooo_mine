import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import 'package:portfoliooo/components/colors.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Text(
              "contact.",
              style: TextStyle(color: const Color.fromRGBO(247, 241, 151, 1), fontSize: 100, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
            ),
          ),
          Row(
            children: [
              Gap(100),
              Container(
                height: 300,
                width: 400,
                //color: Color.fromARGB(255, 79, 75, 64),
                child: LottieBuilder.asset(
                  "assets/images/call.json",
                ),
              ),
              Gap(60),
              Container(
                height: 350,
                width: 700,
                //color: Color.fromARGB(255, 79, 75, 64),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Consttext.contact,
                      style: TextStyle(fontSize: 24, fontFamily: "assets/font/Poppins-Medium.ttf"),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            // color: Colors.amber,
            child: Image.asset(
              "assets/images/banner.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 28, 29, 15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Copyright© 2023 @TejaEkila. All Rights Reserved.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
