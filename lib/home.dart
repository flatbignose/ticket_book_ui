import 'package:festa_machine/core/colors_size_text.dart';
import 'package:festa_machine/widgets/bottom_nav_bar.dart';
import 'package:festa_machine/core/custom_button_tab.dart';
import 'package:festa_machine/widgets/custom_tabbar.dart';
import 'package:festa_machine/widgets/ticket_clipper.dart';
import 'package:festa_machine/widgets/ticket_details.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;

    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Your tickets',
              ),
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight),
                  child: CustomTabBar(size: size)),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  height10,
                  ClipPath(
                    clipper: TicketClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: offGrey,
                          borderRadius: radius30,
                          border: Border.all(width: 2, color: darkGrey)),
                      width: screenWidth * 0.90,
                      height: screenHeight * 0.55,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: kwhite,
                                backgroundImage: NetworkImage(
                                    'https://i3.wp.com/www.thetalentedindian.com/wp-content/uploads/2020/11/Anuv-Jain-1.jpg'),
                              ),
                              trailing: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '03-04-2023',
                                    style:
                                        TextStyle(fontSize: 13, color: tGrey),
                                  ),
                                  Text(
                                    '11:00 AM - 2:00 PM',
                                    style:
                                        TextStyle(fontSize: 13, color: tGrey),
                                  ),
                                ],
                              ),
                              title: Text(
                                'Anuj Jain',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: kwhite,
                                    fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                'India Tour 2023',
                                style: TextStyle(fontSize: 12, color: tGrey),
                              ),
                            ),
                          ),
                          Container(
                            height: screenHeight * 0.2,
                            width: screenWidth * 0.75,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/albumart.jpg'),
                                  fit: BoxFit.cover),
                              color: offGrey,
                              borderRadius: radius30,
                            ),
                          ),
                          TicketDetails(
                              screenWidth: screenWidth,
                              screenHeight: screenHeight),
                        ],
                      ),
                    ),
                  ),
                  height10,
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomButton(
                          offstage: true,
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.45,
                          title: 'Download',
                          gradient: pinkGradient,
                          textColor: kwhite,
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromRGBO(233, 26, 84, 1)
                                  .withAlpha(60),
                              blurRadius: 20.0,
                              spreadRadius: 20.0,
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                            ),
                          ],
                        ),
                        CustomButton(
                          offstage: false,
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.35,
                          color: offGrey,
                          title: 'Share',
                          textColor: kwhite,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: BottomNavBar(size: size)));
  }
}
