import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebPricingItem extends StatelessWidget {
  final String title;
  final String price;
  final String players;
  final String space;
  final String ram;
  final Function()? onTap;

  const WebPricingItem(
      {required this.title,
      required this.price,
      required this.players,
      required this.space,
      required this.ram,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      height: 400.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(onTap: onTap, child: _buildBody(context)),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: WebImage('${title.toLowerCase()}.png', fit: BoxFit.cover)),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) => Container(
        width: 250.0,
        height: 350.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.0,
            ),
            Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0)),
            SizedBox(
              height: 5.0,
            ),
            Text('$players Player Slots',
                textAlign: TextAlign.center,
                style: GoogleFonts.barlow(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0)),
            SizedBox(
              height: 30.0,
            ),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: price,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0)),
                  TextSpan(
                      text: '/mo',
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0)),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: space,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0)),
                  TextSpan(
                      text: ' GB SSD',
                      style: GoogleFonts.barlow(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 24.0)),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: ram,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0)),
                  TextSpan(
                      text: ' MB Ram',
                      style: GoogleFonts.barlow(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 24.0)),
                ],
              ),
            ),
          ],
        ),
      );
}
