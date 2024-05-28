import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfoliooo/firebase_options.dart';
import 'package:portfoliooo/resposive/desktop.dart';
import 'package:portfoliooo/resposive/mobile.dart';
import 'package:portfoliooo/resposive/responsivelayout.dart';
import 'package:portfoliooo/resposive/tab.dart';

void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        desktopScaffold: DesktopScaffold(),
        tabletScaffold: TabletScaffold(),
      ),
    );
  }
}
