import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebPoint extends StatelessWidget {
  final String asset;
  final String name;
  final String description;
  final int index;

  const WebPoint(
      {required this.name,
      required this.description,
      required this.asset,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 175,
          width: 175,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary
          ),
          child: WebImage(
            asset
          ),
        ),

        SizedBox(
          height: 15.0
        ),

        Text(name,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28.0)),
        Text(description,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}
