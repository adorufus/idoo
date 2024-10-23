import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GeneralButton extends GetView {
  GeneralButton(this.title, this.action, this.bgColor, this.textColor);

  final String title;
  final Function() action;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 332,
      child: ElevatedButton(
        onPressed: action,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
            backgroundColor: MaterialStateProperty.all<Color>(bgColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
