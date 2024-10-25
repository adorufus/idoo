import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/global_widgets/general_button.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Ubah Profile',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                CircleAvatar(radius: 40),
                SizedBox(height: 10),
                Text(
                  "Ganti Foto",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text(controller.data["firstName"],
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nomor HP",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text(controller.data["phoneNumber"],
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Referal Induk",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Email",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text(controller.data["email"],
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Provinsi",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text("Banten",
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kota/Kabupaten",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text("Tangerang",
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kecamatan",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text("Batuceper",
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kelurahan",
                  style: TextStyle(color: Color(0xff454545), fontSize: 10)),
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
                  child: Text("Poris Gaga",
                      style: TextStyle(color: Color(0xff454545), fontSize: 12)),
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          GeneralButton("Simpan", () {}, AppColors.primary, Colors.white)
        ]),
      )),
    );
  }
}
