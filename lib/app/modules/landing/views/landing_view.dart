import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/global_widgets/general_button.dart';
import 'package:idoo/app/modules/landing/controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {

  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/photo-bg.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Color(0xff0897A5).withOpacity(0.8),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10),
              Image.asset('assets/images/icons/idoo_white_transparent.png'),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      "Earn your money from us reach a borderless possibility",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          controller.startupCheck();
                        },
                        child: Container(
                            width: 332,
                            height: 60,
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Color(0xff0897A5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
