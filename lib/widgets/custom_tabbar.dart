import 'package:festa_machine/core/colors_size_text.dart';
import 'package:festa_machine/core/custom_button_tab.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return const TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 3),
        dividerColor: invisible,
        indicatorColor: invisible,
        tabAlignment: TabAlignment.center,
        labelStyle: TextStyle(
          fontSize: 15,
        ),
        labelColor: kwhite,
        unselectedLabelColor: kwhite,
        tabs: [
          CustomButton(
            offstage: true,
            title: 'Upcoming',
            gradient: pinkGradient,
          ),
          // width10,
          CustomButton(
            offstage: true,
            title: 'History',
            color: darkGrey,
          )
        ]);
  }
}
