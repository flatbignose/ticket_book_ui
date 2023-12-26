import 'package:festa_machine/core/colors_size_text.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      color: offGrey,
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: darkGrey,
        ),
        child: ClipRRect(
          borderRadius: radius30,
          child: BottomNavigationBar(
              elevation: 0,
              currentIndex: 2,
              backgroundColor: darkGrey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.red,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                  label: '',
                  icon: Icon(Icons.groups_2_outlined),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Image(
                    image: AssetImage('assets/icons/tickets64mar.png'),
                    height: 24,
                    width: 24,
                  ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
