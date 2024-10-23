import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:idoo/app/constants/colors.dart';
import 'package:idoo/app/modules/auth_modules/pin/controllers/pin_controller.dart';
import 'package:idoo/app/routes/app_pages.dart';

class PinInputWidget extends GetView<PinController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: controller.pins.map((pinval) {
                return Container(
                  width: 18,
                  height: 18,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: pinval["filled"] ? Colors.black : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            // height: 400,
            padding: EdgeInsets.symmetric(horizontal: 74),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: (1 / 1),
                crossAxisSpacing: 38,
                mainAxisSpacing: 38,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.inputNumbers.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (controller.inputNumbers[index] == "") {
                  return Container();
                } else {
                  return GestureDetector(
                    onTap: () {
                      if (controller.inputNumbers[index] == "delete") {
                        controller.onClear();

                        controller.pins.refresh();

                        print(controller.pins);
                      } else {
                        for (var pin in controller.pins) {
                          if (!pin["filled"]) {
                            pin['value'] = controller.inputNumbers[index];
                            pin['filled'] = true;
                            break;
                          }
                        }

                        controller.pins.refresh();

                        controller.onPinsFilled(controller.current_context ==
                                    Routes.LOGIN ||
                                controller.current_context == Routes.REGISTER
                            ? Routes.OTP
                            : Routes.DASHBOARD);

                        print(controller.pins);
                      }
                    },
                    child: Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.primary),
                      ),
                      child: Center(
                        child: controller.inputNumbers[index] == "delete"
                            ? Icon(Icons.backspace)
                            : Text(
                                controller.inputNumbers[index].toString(),
                              ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
