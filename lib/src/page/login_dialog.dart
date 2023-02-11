import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/text_input.dart';

class LoginDialog extends StatelessWidget {
  final Function() onSwitch;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginDialog({Key? key, required this.onSwitch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FittedBox(
              fit: BoxFit.cover,
              child: Text(
                  'Sign In',
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: GoogleFonts.barlow(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0
                  )
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            FittedBox(
              fit: BoxFit.cover,
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: "Don't have an account? ",
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0)),
                    TextSpan(
                        text: 'Register here',
                        style: GoogleFonts.barlow(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0),
                        recognizer: TapGestureRecognizer()..onTap = onSwitch
                    ),
                  ],
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            TextInput(
              hint: 'Email',
              icon: Icons.email,
              controller: _emailController,
            ),

            SizedBox(
              height: 10.0,
            ),

            TextInput(
              hint: 'Password',
              icon: Icons.lock,
              controller: _passwordController,
            ),

            SizedBox(
              height: 30.0,
            ),

            SizedBox(
              width: 350.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: RichText(
                    text: TextSpan(
                        text: 'LOG IN',
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
