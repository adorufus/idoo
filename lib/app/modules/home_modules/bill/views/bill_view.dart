import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:idoo/app/modules/home_modules/bill/widgets/menu_listtile_widget.dart';

import '../controllers/bill_controller.dart';

class BillView extends GetView<BillController> {
  const BillView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Tagihan',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                MenuListTileWidget("Televisi", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/tv.png'),
                MenuListTileWidget("Kartu Kredit", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/credit-card.png'),
                MenuListTileWidget("Asuransi", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/assurance.png'),
                MenuListTileWidget("BPJS", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/bpjs.png'),
                MenuListTileWidget("PDAM", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/pdam.png'),
                MenuListTileWidget("Telkom", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/telkom.png'),
                MenuListTileWidget("Samsat", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/samsat.png'),
                MenuListTileWidget("PBB", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/pbb.png'),
                MenuListTileWidget(
                    "Gas Pertamina",
                    "Tidak 24 jam, gratis admin",
                    'assets/images/icons/pertamina.png'),
                MenuListTileWidget("Gas Negara", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/pgn.png'),
                MenuListTileWidget("Tagihan PLN", "Tidak 24 jam, gratis admin",
                    'assets/images/icons/pln.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
