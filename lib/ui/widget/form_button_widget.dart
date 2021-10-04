import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormButtonWidget extends StatelessWidget {
  const FormButtonWidget(
      {Key? key,
      required this.color,
      required this.text,
      required this.onPressed})
      : super(key: key);

  final Color color;
  final Widget text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 40,
              offset: const Offset(0, 15)),
          BoxShadow(
              color: color.withOpacity(0.2),
              blurRadius: 13,
              offset: const Offset(0, 3))
        ]),
        child: MaterialButton(
            elevation: 0,
            onPressed: onPressed,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            color: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: text));
  }
}
