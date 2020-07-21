import 'package:flutter/material.dart';
import 'package:hosting/src/constant/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_image.dart';

class WebFeatureItem extends StatelessWidget {
  final String name;
  final String description;
  final String asset;

  const WebFeatureItem(
      {@required this.name, @required this.description, @required this.asset});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: setHeight(300.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              WebImage(asset, fit: BoxFit.cover),
              SizedBox(
                width: 15.0,
              ),
              Text(name,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.barlow(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0)),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(description,
              maxLines: 3,
              textAlign: TextAlign.start,
              style: GoogleFonts.barlow(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0)),
        ],
      ),
    );
  }
}
