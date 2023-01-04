import 'package:flutter/material.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';
import 'package:hosting/src/widget/web_payment_item.dart';

class PurchasePayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WebNavigationBar(showItems: false),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("SELECT A PAYMENT",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0)),
                  SizedBox(
                    height: setHeight(10.0),
                  ),
                  Text('Your server will be created instantly!',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.barlow(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0)),
                  SizedBox(
                    height: setHeight(30.0),
                  ),
                ],
              ),
              WebPaymentItem(
                name: 'PayPal',
                asset: 'pp',
                onTap: () {},
              ),
              WebPaymentItem(
                name: 'Credit Card',
                asset: 'credit',
                width: 48.0,
                height: 31.0,
                onTap: () {},
              ),

              WebFooter()
            ],
          )
      ),
    );
  }
}
