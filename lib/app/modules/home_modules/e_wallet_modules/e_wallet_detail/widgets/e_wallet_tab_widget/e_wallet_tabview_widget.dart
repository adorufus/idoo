import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/modules/home_modules/e_wallet_modules/e_wallet_detail/widgets/e_wallet_tab_widget/e_wallet_tab_widget_controller.dart';

import '../../../../../../routes/app_pages.dart';

class EWalletTabViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EWalletTabWidgetController tabC =
        Get.put(EWalletTabWidgetController());
    // ↑ init tab controller

    List customer = [
      {
        'label': 'Flash Sale',
        'type': 'flash-sale',
        'items': [2, 2]
      },
      {
        'label': 'Regular',
        'type': 'regular',
        'items': [1, 2, 3, 4, 5, 6]
      },
    ];

    List driver = [
      {
        'label': 'Flash Sale',
        'type': 'flash-sale',
        'items': [2]
      },
      {
        'label': 'Regular',
        'type': 'regular',
        'items': [1, 2, 3, 4, 5, 6]
      },
    ];

    return Expanded(
      child: TabBarView(controller: tabC.tabController, children: [
        ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
            itemCount: customer.length,
            itemBuilder: (context, parentIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      customer[parentIndex]['label'],
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: customer[parentIndex]['items'].length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: (1 / .4),
                    ),
                    itemBuilder: (context, subIndex) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Saldo Customer 100K",
                                                style: TextStyle(
                                                    color: Color(0xFF454545),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            customer[parentIndex]['type'] ==
                                                    'flash-sale'
                                                ? SvgPicture.asset(
                                                    'assets/svg/icons/discount.svg',
                                                    height: 30,
                                                    fit: BoxFit.scaleDown)
                                                : SizedBox.shrink()
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 230,
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text(
                                              "Saldo Gopay Customer Senilai 100 Ribu + Voucher perjalanan 20%",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        customer[parentIndex]['type'] ==
                                                'flash-sale'
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text("Rp 5.250",
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors
                                                            .grey.shade400,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )
                                            : SizedBox.shrink(),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text("Harga",
                                                style: TextStyle(
                                                  color: Color(0xff454545),
                                                  fontSize: 10,
                                                )),
                                            SizedBox(width: 5),
                                            Text("Rp 5.000",
                                                style: TextStyle(
                                                    color: Color(0xff0897A5),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }),
        ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
            itemCount: driver.length,
            itemBuilder: (context, parentIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      driver[parentIndex]['label'],
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: driver[parentIndex]['items'].length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: (1 / .4),
                    ),
                    itemBuilder: (context, subIndex) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Saldo Driver 100K",
                                                style: TextStyle(
                                                    color: Color(0xFF454545),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            driver[parentIndex]['type'] ==
                                                    'flash-sale'
                                                ? SvgPicture.asset(
                                                    'assets/svg/icons/discount.svg',
                                                    height: 30,
                                                    fit: BoxFit.scaleDown)
                                                : SizedBox.shrink()
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 230,
                                          padding: EdgeInsets.only(right: 20),
                                          child: Text(
                                              "Saldo Gopay Driver Senilai 100 Ribu + Point perjalanan 20%",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        driver[parentIndex]['type'] ==
                                                'flash-sale'
                                            ? Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text("Rp 5.250",
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Colors
                                                            .grey.shade400,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              )
                                            : SizedBox.shrink(),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text("Harga",
                                                style: TextStyle(
                                                  color: Color(0xff454545),
                                                  fontSize: 10,
                                                )),
                                            SizedBox(width: 5),
                                            Text("Rp 5.000",
                                                style: TextStyle(
                                                    color: Color(0xff0897A5),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            }),
      ]),
    );
  }
}
