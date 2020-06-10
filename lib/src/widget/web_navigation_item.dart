import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebNavigationItem extends StatelessWidget {
  final String name;
  final Function onClick;
  final bool mobile;

  const WebNavigationItem({@required this.name, @required this.onClick, this.mobile});

  @override
  Widget build(BuildContext context) {
    if(mobile){
      return SizedBox(

      );
    }

    return InkWell(
      onTap: onClick,
      child: Text(
          name,
          style: GoogleFonts.barlow(
              color: Colors.white,
              fontWeight: FontWeight.bold
          )
      ),
    );
  }
}
