import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:idoo/app/modules/home_modules/pulsa/widgets/pulsa_tab_widget/pulsa_tab_widget_controller.dart';

import '../../../../../routes/app_pages.dart';

class PulsaTabViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PulsaTabWidgetController tabC = Get.put(PulsaTabWidgetController());
    // ↑ init tab controller
    List pulsa = [
      {
        'label': 'Flash Sale',
        'type': 'flash-sale',
        'items': [2, 2]
      },
      {
        'label': 'Regular',
        'type': 'regular',
        'items': [1, 2, 3, 4, 5, 6, 7, 8]
      },
    ];

    List paketData = [
      {
        'label': 'Flash Sale',
        'type': 'flash-sale',
        'items': [2]
      },
      {
        'label': 'Regular',
        'type': 'regular',
        'items': [1, 2, 3, 4, 5]
      },
    ];

    List paketTelpon = [
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

    List sms = [
      {
        'label': 'Flash Sale',
        'type': 'flash-sale',
        'items': [2, 2, 3, 4]
      },
      {
        'label': 'Regular',
        'type': 'regular',
        'items': [1, 2, 3, 4, 5, 6, 7, 8]
      },
    ];

    return Expanded(
      child: TabBarView(controller: tabC.tabController, children: [
        ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
            itemCount: pulsa.length,
            itemBuilder: (context, parentIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      pulsa[parentIndex]['label'],
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: pulsa[parentIndex]['items'].length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .7),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("5.000",
                                            style: TextStyle(
                                                color: Color(0xFF454545),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                        pulsa[parentIndex]['type'] ==
                                                'flash-sale'
                                            ? SvgPicture.asset(
                                                'assets/svg/icons/discount.svg',
                                                height: 30,
                                                fit: BoxFit.scaleDown)
                                            : SizedBox.shrink()
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Harga",
                                                style: TextStyle(
                                                  color: Color(0xff454545),
                                                  fontSize: 10,
                                                )),
                                            pulsa[parentIndex]['type'] ==
                                                    'flash-sale'
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                                FontWeight
                                                                    .bold)),
                                                  )
                                                : SizedBox.shrink(),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Text("Rp 5.000",
                                            style: TextStyle(
                                                color: Color(0xff0897A5),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
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
            itemCount: paketData.length,
            itemBuilder: (context, parentIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      paketData[parentIndex]['label'],
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: paketData[parentIndex]['items'].length,
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
                                            Text("Kuota TRI 33GB",
                                                style: TextStyle(
                                                    color: Color(0xFF454545),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            paketData[parentIndex]['type'] ==
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
                                              "Kuota three 33GB 24 Jam 30 Hari tanpa dibagi-bagi tiap jam",
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
                                        paketData[parentIndex]['type'] ==
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
            itemCount: paketTelpon.length,
            itemBuilder: (context, parentIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      paketTelpon[parentIndex]['label'],
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: paketTelpon[parentIndex]['items'].length,
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
                                            Text("Telpon TSEL 10 Jam",
                                                style: TextStyle(
                                                    color: Color(0xFF454545),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            paketTelpon[parentIndex]['type'] ==
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
                                              "Paket Nelpon TSEL Nasional 15 Menit All Operator + 85 Menit sesama telkomsel / 1 Hari.",
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
                                        paketTelpon[parentIndex]['type'] ==
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
            itemCount: sms.length,
            itemBuilder: (context, parentIndex) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      sms[parentIndex]['label'],
                      style: TextStyle(
                          color: Color(0xff0897A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: sms[parentIndex]['items'].length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .7),
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("SMS 3K",
                                            style: TextStyle(
                                                color: Color(0xFF454545),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                        sms[parentIndex]['type'] == 'flash-sale'
                                            ? SvgPicture.asset(
                                                'assets/svg/icons/discount.svg',
                                                height: 30,
                                                fit: BoxFit.scaleDown)
                                            : SizedBox.shrink()
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Harga",
                                                style: TextStyle(
                                                  color: Color(0xff454545),
                                                  fontSize: 10,
                                                )),
                                            sms[parentIndex]['type'] ==
                                                    'flash-sale'
                                                ? Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                                FontWeight
                                                                    .bold)),
                                                  )
                                                : SizedBox.shrink(),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Text("Rp 5.000",
                                            style: TextStyle(
                                                color: Color(0xff0897A5),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
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
