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
                SizedBox(height: 30),
                MenuListTileWidget("Televisi", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/tv.svg'),
                MenuListTileWidget("Kartu Kredit", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/credit-card.svg'),
                MenuListTileWidget("Asuransi", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/assurance.svg'),
                MenuListTileWidget("BPJS", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/bpjs.svg'),
                MenuListTileWidget("PDAM", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/pdam.svg'),
                MenuListTileWidget("Telkom", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/telkom.svg'),
                MenuListTileWidget("Samsat", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/samsat.svg'),
                MenuListTileWidget("PBB", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/pbb.svg'),
                MenuListTileWidget(
                    "Gas Pertamina",
                    "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/pertamina.svg'),
                MenuListTileWidget("Gas Negara", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/pgn.svg'),
                MenuListTileWidget("Tagihan PLN", "Tidak 24 jam, gratis admin",
                    'assets/svg/icons/pln.svg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
