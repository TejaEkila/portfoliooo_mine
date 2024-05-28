// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.desktopScaffold,
    required this.tabletScaffold,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileScaffold;
        } else if (constraints.maxWidth < 1400) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
