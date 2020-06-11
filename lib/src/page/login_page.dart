import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/constant/color.dart';
import 'package:hosting/src/widget/text_input.dart';
import 'package:hosting/src/widget/web_footer.dart';
import 'package:hosting/src/widget/web_navigation_bar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screen = ScreenUtil();
    return Scaffold(
        body: Container(
            color: BLUE_BACKGROUND,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WebNavigationBar(
                    showItems: false
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'CUSTOMER AREA',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32.0
                        )
                    ),

                    SizedBox(
                      height: screen.setHeight(10.0),
                    ),

                    RichText(
                      text: TextSpan(
                        text: '',
                        children: <TextSpan>[
                          TextSpan(
                              text: "Don't have an account? ",
                              style: GoogleFonts.barlow(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0
                              )
                          ),

                          TextSpan(
                              text: 'Register here',
                              style: GoogleFonts.barlow(
                                  color: BLUE,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.0
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () => Navigator.of(context).pushNamedAndRemoveUntil('/register', (e) => e.isFirst)
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),

                    TextInput(
                      hint: 'Email',
                      icon: Icons.email,
                      controller: _emailController,
                    ),

                    SizedBox(
                      height: screen.setHeight(10.0),
                    ),

                    TextInput(
                      hint: 'Password',
                      icon: Icons.lock,
                      controller: _passwordController,
                    ),

                    SizedBox(
                      height: screen.setHeight(30.0),
                    ),

                    SizedBox(
                      width: screen.setWidth(350.0),
                      height: screen.setHeight(50.0),
                      child: FlatButton(
                        color: BLUE,
                        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/login', (e) => e.isFirst),
                        child:  Text(
                            'LOG IN',
                            style: GoogleFonts.barlow(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ),
                    )
                  ],
                ),

                WebFooter()
              ],
            )
        )
    );
  }
}