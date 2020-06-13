import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';

class TextInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final IconData icon;

  const TextInput(
      {@required this.hint, @required this.controller, @required this.icon});

  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil();
    return SizedBox(
      width: screen.setWidth(350.0),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.zero,
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: TextField(
            cursorColor: Colors.white,
            controller: controller,
            decoration: InputDecoration(
                hintText: hint,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                hintStyle: GoogleFonts.barlow(
                    fontWeight: FontWeight.w400, color: BLUE_ACCENT),
                focusColor: Colors.white,
                hoverColor: Colors.white,
                icon: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: BLUE_ACCENT,
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: Icon(icon)))),
      ),
    );
  }
}
