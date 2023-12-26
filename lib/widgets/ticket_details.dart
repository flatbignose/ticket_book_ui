import 'package:festa_machine/core/colors_size_text.dart';
import 'package:flutter/material.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FractionallySizedBox(
        alignment: Alignment.bottomCenter,
        widthFactor: 1,
        heightFactor: 0.9,
        child: Container(
          decoration: BoxDecoration(
            color: tGrey,
            borderRadius: radius30,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TicketInfoLine(
                  detail: 'Mumbai Stadium, Mumbai, India',
                  icon: Icons.location_on_outlined,
                ),
                const TicketInfoLine(
                  detail: '03-04-2023, 11:00am - 2:00pm',
                  icon: Icons.location_on_outlined,
                ),
                const TicketInfoLine(
                  detail: 'Row: 2      Seats:09,10',
                  icon: Icons.circle,
                ),
                const Row(
                  children: [
                    TicketInfoLine(
                      detail: '₹10,000',
                      fSize: 20,
                      icon: Icons.local_movies_outlined,
                    ),
                    width10,
                    Text(
                      '₹15,000',
                      style: TextStyle(
                          color: kRed,
                          fontSize: 17,
                          decoration: TextDecoration.lineThrough),
                    )
                  ],
                ),
                SizedBox(
                  width: screenWidth * 0.85,
                  height: screenHeight * 0.05,
                  child: const Image(
                    image: AssetImage(
                      'assets/images/barcode.png',
                    ),
                    fit: BoxFit.cover,
                    color: kwhite,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketInfoLine extends StatelessWidget {
  const TicketInfoLine(
      {super.key, required this.detail, required this.icon, this.fSize});
  final String detail;
  final IconData icon;
  final double? fSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: kwhite,
          size: 15,
        ),
        width5,
        Text(
          detail,
          style: TextStyle(color: kwhite, fontSize: fSize),
        ),
      ],
    );
  }
}
