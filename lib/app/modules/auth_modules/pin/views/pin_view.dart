import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/auth_modules/pin/widgets/pin_input_widget.dart';

import '../../../../global_widgets/general_button.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/pin_controller.dart';

class PinView extends GetView<PinController> {
  const PinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xff898989)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 30),
                  Text(controller.title, style: TextStyle(fontSize: 24)),
                  SizedBox(height: 30),
                  PinInputWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
