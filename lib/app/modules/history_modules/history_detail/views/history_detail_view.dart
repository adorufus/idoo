import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../global_widgets/general_button.dart';
import '../controllers/history_detail_controller.dart';

class HistoryDetailView extends GetView<HistoryDetailController> {
  const HistoryDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Detail Riwayat',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 330,
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Paket Nelpon TSEL 20 Menit",
                                style: TextStyle(
                                    color: Color(0xff454545),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("Selasa, 8 Maret 2022, 12.23 WIB",
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 12))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Status",
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 12)),
                            SizedBox(height: 5),
                            Text("BERHASIL",
                                style: TextStyle(
                                    color: Color(0xff009F3C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ]),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.grey.shade300))),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Produk",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("Pulsa Telfon",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomor Tujuan",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("0812-1932-1240",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ID Transaksi",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("#1234asd123",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Waktu",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("12.23 WIB",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tanggal",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("Selasa, 8 Maret 2022",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Harga",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("Rp 10.000",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Biaya Admin",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                      Text("Rp 123",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2, color: Colors.grey.shade300)))),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Harga",
                          style: TextStyle(
                              color: Color(0xff454545), fontSize: 14)),
                      Text("Rp 10.123",
                          style: TextStyle(
                              color: Color(0xff009F3C),
                              fontSize: 16,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(height: 30),
            GeneralButton("Beli Lagi", () {}, 0xff0897A5, Colors.white)
          ],
        ));
  }
}
