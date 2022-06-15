import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:idoo/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 124,
            color: Colors.white,
            child: Center(
                child: ListTile(
              leading: CircleAvatar(
                radius: 50,
              ),
              title: Text("Agus Abimanyu Alfahri",
                  style: TextStyle(
                      color: Color(0xff454545),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              subtitle: Text("+62 812-1234-1234",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14)),
            )),
          ),
          SizedBox(height: 20),
          Container(
            height: 210,
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Center(
                child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ID Anda",
                        style:
                            TextStyle(color: Color(0xff454545), fontSize: 10)),
                    SizedBox(height: 10),
                    Container(
                      width: 376,
                      height: 48,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe8feff),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("123412341234",
                                style: TextStyle(
                                    color: Color(0xff454545), fontSize: 12)),
                            Row(
                              children: [
                                Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        'assets/svg/icons/copy.svg',
                                        height: 20,
                                        fit: BoxFit.scaleDown),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 26,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        'assets/svg/icons/share.svg',
                                        height: 20,
                                        fit: BoxFit.scaleDown),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Referal Induk",
                        style:
                            TextStyle(color: Color(0xff454545), fontSize: 10)),
                    SizedBox(height: 10),
                    Container(
                      width: 376,
                      height: 48,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xffe8feff),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("cpasd12341",
                            style: TextStyle(
                                color: Color(0xff454545), fontSize: 12)),
                      ),
                    )
                  ],
                ),
              ],
            )),
          ),
          SizedBox(height: 20),
          Container(
              height: 198,
              color: Colors.white,
              child: Column(
                children: [
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.EDIT_PROFILE),
                      child: Container(
                        height: 66,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0, color: Colors.grey.shade200),
                          ),
                        ),
                        child: ListTile(
                          isThreeLine: true,
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(
                                'assets/svg/icons/profile.svg',
                                height: 30,
                                fit: BoxFit.scaleDown),
                          ),
                          title: Text("Ubah Profile",
                              style: TextStyle(
                                  color: Color(0xff454545),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          subtitle: Text("Ganti Nama, Foto, Email, Alamat",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.EDIT_PASSWORD),
                      child: Container(
                        height: 66,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 1.0, color: Colors.grey.shade200),
                          ),
                        ),
                        child: ListTile(
                          isThreeLine: true,
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset('assets/svg/icons/lock.svg',
                                height: 30, fit: BoxFit.scaleDown),
                          ),
                          title: Text("Ubah Password",
                              style: TextStyle(
                                  color: Color(0xff454545),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          subtitle: Text("Ganti Password Akun",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => Get.toNamed(Routes.EDIT_PIN),
                      child: Container(
                        height: 66,
                        child: ListTile(
                          isThreeLine: true,
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: SvgPicture.asset(
                                'assets/svg/icons/secured-text.svg',
                                height: 30,
                                fit: BoxFit.scaleDown),
                          ),
                          title: Text("Ubah PIN",
                              style: TextStyle(
                                  color: Color(0xff454545),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          subtitle: Text("Ganti PIN Akun",
                              style: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 66,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffF22F2F)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ))),
              child: Text(
                "Keluar",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
