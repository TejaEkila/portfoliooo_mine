import 'package:flutter/cupertino.dart';

import 'package:gap/gap.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gap(30),
          Row(
            children: [
              Container(
                // color: const Color.fromARGB(255, 203, 83, 83),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,I'm Teja",
                      style: TextStyle(color: const Color.fromRGBO(3, 4, 94, 1), fontFamily: "assets/font/Poppins-Medium.ttf", fontSize: 28, fontWeight: FontWeight.w400),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "Flutter\n",
                        style: TextStyle(color: const Color.fromRGBO(3, 4, 94, 1), fontSize: 70, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: "Developer",
                        style: TextStyle(color: const Color.fromRGBO(3, 4, 94, 1), fontSize: 70, fontFamily: "assets/font/Poppins-ExtraBold.ttf", fontWeight: FontWeight.w900),
                      )
                    ])),
                    Text("based in India", style: TextStyle(color: const Color.fromRGBO(3, 4, 94, 1), fontSize: 28, fontFamily: "assets/font/Poppins-Medium.ttf", fontWeight: FontWeight.w400)),
                    Gap(30),

                    // PrettyShadowButton(
                    //   duration: Duration(seconds: 20),
                    //   label: "Resume",
                    //   onPressed: () {
                    //     AlterDiaglog(context, CV());
                    //   },
                    //   shadowColor: const Color.fromRGBO(245, 238, 132, 1),
                    // ),
                  ],
                ),
              ),
              Gap(80),
              Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 50),
                      child: Container(
                        width: 300.0,
                        height: 350.0,
                        //color: Colors.amber,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            child: Container(
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
                      child: Container(height: 340, width: 300, child: Image.asset("assets/images/Vector.png")),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
