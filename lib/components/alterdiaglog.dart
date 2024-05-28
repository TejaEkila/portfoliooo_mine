import 'package:flutter/material.dart';

import 'package:portfoliooo/components/colors.dart';

// ignore: non_constant_identifier_names
void AlterDiaglog(BuildContext context, Widget widget) {
  // ignore: prefer_typing_uninitialized_variables

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: ConstColors.headtext,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Add border radius if needed
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: SingleChildScrollView(
              child: SizedBox(
                height: 680,
                width: 1000,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: widget,
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
