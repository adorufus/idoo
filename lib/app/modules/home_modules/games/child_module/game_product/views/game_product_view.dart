import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/games/child_module/game_product/controllers/game_product_controller.dart';
import 'package:idoo/app/modules/home_modules/pulsa/widgets/phone_input_widget.dart';

class GameProductView extends GetView<GameProductController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xff898989),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text("Games",
                                  style: TextStyle(
                                      color: Color(0xff0897A5),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(height: 30),
                          PhoneInputWidget(
                            controller: controller.phoneController,
                          ),
                        ],
                      ),
                      //Stop
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                  children: controller.products.map((prod) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(prod["code"],
                                        style: TextStyle(
                                            color: Color(0xFF454545),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    // p['type'] == 'flash-sale'
                                    //     ? SvgPicture.asset(
                                    //         'assets/svg/icons/discount.svg',
                                    //         height: 30,
                                    //         fit: BoxFit.scaleDown,
                                    //       )
                                    //     : SizedBox.shrink()
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 230,
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(
                                    prod["name"],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // p['type'] == 'flash-sale'
                                //     ? Padding(
                                //         padding: const EdgeInsets.only(left: 5),
                                //         child: Text(
                                //           "Rp 5.250",
                                //           style: TextStyle(
                                //             decoration:
                                //                 TextDecoration.lineThrough,
                                //             color: Colors.grey.shade400,
                                //             fontSize: 12,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       )
                                //     : SizedBox.shrink(),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Harga",
                                      style: TextStyle(
                                        color: Color(0xff454545),
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Rp. ${prod["buyingPrice"]}",
                                      style: TextStyle(
                                        color: Color(0xff0897A5),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList())
            ],
          ),
        ),
      ),
    );
  }
}
