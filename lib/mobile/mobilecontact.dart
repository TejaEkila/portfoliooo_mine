import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:portfoliooo/components/colors.dart';

class MobileContact extends StatefulWidget {
  const MobileContact({super.key});

  @override
  State<MobileContact> createState() => _ContactState();
}

class _ContactState extends State<MobileContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "contact.",
            style: TextStyle(color: const Color.fromRGBO(247, 241, 151, 1), fontSize: 80, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
          ),
          Gap(20),
          Container(
            //color: Color.fromARGB(255, 79, 75, 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  height: 350,
                  width: 400,
                  child: LottieBuilder.asset("assets/images/call.json"),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    Consttext.contact,
                    style: TextStyle(fontSize: 20, fontFamily: "assets/font/Poppins-Medium.ttf"),
                  ),
                ),
                Gap(25),
              ],
            ),
          ),
          Container(
            // color: Colors.amber,
            child: Image.asset(
              "assets/images/banner.png",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
