import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

//import 'package:pretty_animated_buttons/widgets/pretty_shadow_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100, top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Gap(20),
          SizedBox(
            height: 800,
            width: 700,
            // color: const Color.fromARGB(255, 203, 83, 83),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 230),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello,I'm Teja",
                    style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 28, fontWeight: FontWeight.w400),
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "Flutter\n",
                      style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontSize: 100, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: "Developer",
                      style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontSize: 100, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
                    )
                  ])),
                  const Text("based in India", style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontSize: 28, fontFamily: "assets/font/Poppins-Medium.ttf", fontWeight: FontWeight.w400)),
                  const Gap(30),
                  // PrettyShadowButton(
                  //   duration: const Duration(seconds: 20),
                  //   label: "Resume",
                  //   onPressed: () {
                  //     AlterDiaglog(context, const CV());
                  //   },
                  //   shadowColor: const Color.fromRGBO(245, 238, 132, 1),
                  // ),
                ],
              ),
            ),
          ),
          Center(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100, left: 50),
                  child: SizedBox(
                    width: 700.0,
                    height: 550.0,
                    //color: Colors.amber,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: SizedBox(
                          width: 500.0,
                          height: 450.0,
                          child: Image.asset(
                            "assets/images/image.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130, top: 350),
                  child: Image.asset("assets/images/sty2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 550, top: 20),
                  child: Image.asset("assets/images/sty1.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: SizedBox(height: 440, width: 670, child: Image.asset("assets/images/Vector.png")),
                )
              ],
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
