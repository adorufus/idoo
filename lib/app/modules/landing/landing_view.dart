import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/global_widgets/general_button.dart';

class LandingView extends GetView {
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
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Flexible(
                      child: Text(
                        "Earn your money from us reach a borderless possibility",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 332,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color(0xff0897A5),
                          fontWeight: FontWeight.bold,
                        ),
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
