import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  // final List menu = [
  //   {
  //     'path': "assets/svg/icons/pulsa.svg",
  //     'title': "Pulsa & Data",
  //     'route': Routes.PULSA
  //   },
  //   {
  //     'path': "assets/svg/icons/bill.svg",
  //     'title': "Tagihan",
  //     'route': Routes.BILL
  //   },
  //   {
  //     'path': "assets/svg/icons/electricity.svg",
  //     'title': "Listrik",
  //     'route': Routes.E_WALLET
  //   },
  //   {
  //     'path': "assets/svg/icons/plane.svg",
  //     'title': "Travel",
  //     'route': Routes.TRAVEL
  //   },
  //   {
  //     'path': "assets/svg/icons/e-wallet.svg",
  //     'title': "E-Wallet",
  //     'route': Routes.E_WALLET
  //   },
  //   {
  //     'path': "assets/svg/icons/game.svg",
  //     'title': "Game",
  //     'route': Routes.GAMES
  //   },
  //   {
  //     'path': "assets/svg/icons/calendar.svg",
  //     'title': "Angsuran",
  //     'route': Routes.INSTALLMENT
  //   },
  //   {
  //     'path': "assets/svg/icons/all-menu.svg",
  //     'title': "All Product",
  //     'route': Routes.E_WALLET
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 160),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.menu.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    Map menuItem = controller.menu[index];

                    return MaterialButton(
                      minWidth: 40,
                      onPressed: () => Get.toNamed(menuItem['route']),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(menuItem['path'],
                              height: 30, fit: BoxFit.scaleDown),
                          SizedBox(height: 10),
                          Text(menuItem['title'],
                              style: TextStyle(
                                  color: Color(0xff4E4E4E), fontSize: 10))
                        ],
                      ),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 361,
                  height: 83,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1.0, color: Colors.grey.shade300),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 20),
                        SvgPicture.asset('assets/svg/icons/clap.svg',
                            height: 50, fit: BoxFit.scaleDown),
                        SizedBox(width: 20),
                        SizedBox(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Kirim Referral",
                                  style: TextStyle(
                                      color: Color(0xff454545),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Dapatkan komisi beragam untuk setiap agen yang mendaftar dari kode reff anda",
                                  style: TextStyle(
                                      color: Color(0xff454545), fontSize: 9),
                                )
                              ],
                            )),
                        SvgPicture.asset('assets/svg/icons/grey-arrow.svg',
                            height: 20, fit: BoxFit.scaleDown),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("Info & Promo Spesial",
                        style: TextStyle(
                            color: Color(0xff0897A5),
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          3,
                          (index) => Image.asset(
                              'assets/images/banners/link-aja-banner.png')),
                    ),
                  ),
                ],
              )),
              SizedBox(height: 30),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("Tutorial & Cara",
                        style: TextStyle(
                            color: Color(0xff0897A5),
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                          5,
                          (index) => Image.asset(
                              'assets/images/banners/dummy-banner.png')),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              )),
            ]),
          ),
          Column(
            children: [
              Container(
                height: 130,
                color: Color(0xff0897A5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "iDoo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () => Get.toNamed(Routes.NOTIFICATION),
                                child: Container(
                                  width: 82,
                                  height: 25,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/svg/icons/bell.svg',
                                          height: 12,
                                          fit: BoxFit.scaleDown),
                                      SizedBox(width: 5),
                                      Text(
                                        "Promo",
                                        style: TextStyle(
                                            color: Color(0xff0897A5),
                                            fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: Text("Rp",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                              ),
                              SizedBox(width: 10),
                              Obx(
                                () => Text(
                                  controller.personalBalance.value,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.TOP_UP),
                            child: Icon(
                              Icons.add_circle_outline_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 44,
                color: Color(0xffe8feff),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Text("Point",
                                style: TextStyle(
                                    color: Color(0xff0897A5), fontSize: 10)),
                            SizedBox(width: 20),
                            Obx(
                              () => Text(
                                controller.personalPoint.value,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 40),
                        Row(
                          children: [
                            Text("Komisi",
                                style: TextStyle(
                                    color: Color(0xff0897A5), fontSize: 10)),
                            SizedBox(width: 20),
                            Obx(
                              () => Text(
                                controller.personalKomis.value,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 67,
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff0897A5)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ))),
                        child: Text(
                          "Tukar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
