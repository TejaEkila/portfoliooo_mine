import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              _launchURL('https://www.instagram.com/_u_jet/');
            },
            child: Container(
              height: 40,
              width: 40,
              //color: Colors.black,
              child: Image.asset(
                "assets/images/instagram.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(25),
          GestureDetector(
            onTap: () {
              _launchURL('https://www.linkedin.com/in/ekila-teja-b67913241/');
            },
            child: Container(
              height: 30,
              width: 30,
              //color: Colors.black,
              child: Image.asset(
                "assets/images/linkedin.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(30),
          GestureDetector(
            onTap: () {
              _launchURL('https://github.com/TejaEkila');
            },
            child: Container(
              height: 30,
              width: 30,
              // color: Colors.black,
              child: Image.asset(
                "assets/images/github.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(20),
          GestureDetector(
            onTap: () {
              _launchURL('https://joinentre.com/profile/teja');
            },
            child: Container(
              height: 40,
              width: 40,
              // color: Colors.black,
              child: Image.asset(
                "assets/images/entre.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
