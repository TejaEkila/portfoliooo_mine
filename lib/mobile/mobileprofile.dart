import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

//import 'package:pretty_animated_buttons/widgets/pretty_shadow_button.dart';

class MobileProfile extends StatelessWidget {
  const MobileProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Gap(30),
        Column(
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
                style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontSize: 70, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
              ),
              TextSpan(
                text: "Developer",
                style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontSize: 70, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
              )
            ])),
            const Text("based in India", style: TextStyle(color: Color.fromRGBO(3, 4, 94, 1), fontSize: 28, fontFamily: "assets/font/Poppins-Medium.ttf", fontWeight: FontWeight.w400)),
            const Gap(30),
            // PrettyShadowButton(
            //   duration: const Duration(seconds: 20),
            //   label: "Resume",
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const MobileCv()),
            //     );
            //   },
            //   shadowColor: const Color.fromRGBO(245, 238, 132, 1),
            // ),
          ],
        ),
        const Gap(20),
        Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 50),
                child: SizedBox(
                  width: 300.0,
                  height: 350.0,
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
                padding: const EdgeInsets.only(left: 20, top: 230),
                child: Image.asset("assets/images/sty2.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 320, top: 20),
                child: Image.asset("assets/images/sty1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40,
                ),
                child: SizedBox(height: 340, width: 300, child: Image.asset("assets/images/Vector.png")),
              )
            ],
          ),
        ),
      ],
    );
  }
}
