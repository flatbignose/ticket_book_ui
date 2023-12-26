import 'package:festa_machine/core/colors_size_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.color,
    this.gradient,
    this.height,
    this.width,
    this.textColor,
    this.boxShadow,
    required this.offstage,
  });
  final String title;
  final Color? color;
  final Color? textColor;
  final LinearGradient? gradient;
  final double? height;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final bool offstage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: radius5,
        boxShadow: boxShadow,
        color: color,
      ),
      // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      constraints: const BoxConstraints(minWidth: 90, minHeight: 35),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Offstage(
                offstage: offstage,
                child:  const Icon(
                  Icons.circle_outlined,
                  color: kwhite,
                )),
            Text(
              title,
              style: TextStyle(color: textColor),
            ),
            Offstage(
              offstage: offstage,
              child: const Icon(
                Icons.circle_outlined,
                color: kwhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
