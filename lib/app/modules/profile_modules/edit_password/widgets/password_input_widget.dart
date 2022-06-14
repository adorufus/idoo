import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idoo/app/modules/profile_modules/edit_password/controllers/edit_password_controller.dart';

class PasswordInputWidget extends GetView<EditPasswordController> {
  PasswordInputWidget(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Color(0xff454545), fontSize: 10)),
        SizedBox(height: 10),
        Container(
          width: 376,
          height: 48,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: controller.obscured,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              hintText: title,
              filled: true, // Needed for adding a fill color
              fillColor: Color(0xff0ffe8feff),
              isDense: true, // Reduces height a bit
              border: OutlineInputBorder(
                borderSide: BorderSide.none, // No border
                borderRadius: BorderRadius.circular(8), // Apply corner radius
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                child: GestureDetector(
                  onTap: controller.toggleObscured,
                  child: Icon(
                    controller.obscured
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
