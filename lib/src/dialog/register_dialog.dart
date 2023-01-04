import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hosting/src/dialog/login_dialog.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/widget/text_input.dart';

class RegisterDialog extends StatelessWidget {
  final void Function() onSwitch;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  RegisterDialog({Key? key, required this.onSwitch}) : super(key: key);

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
                Text(
                    'CREATE AN ACCOUNT',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.barlow(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0
                    )
                ),
                SizedBox(
                  height: setHeight(10.0),
                ),
                RichText(
                  text: TextSpan(
                    text: '',
                    children: <TextSpan>[
                      TextSpan(
                          text: "Do you have an account? ",
                          style: GoogleFonts.barlow(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0)),
                      TextSpan(
                          text: 'Sign in here',
                          style: GoogleFonts.barlow(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0),
                          recognizer: TapGestureRecognizer()..onTap = onSwitch
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: setHeight(30.0),
                ),
                TextInput(
                  hint: 'Name',
                  icon: Icons.person,
                  controller: _nameController,
                ),
                SizedBox(
                  height: setHeight(10.0),
                ),
                TextInput(
                  hint: 'Email',
                  icon: Icons.email,
                  controller: _emailController,
                ),
                SizedBox(
                  height: setHeight(10.0),
                ),
                TextInput(
                  hint: 'Password',
                  icon: Icons.lock,
                  controller: _passwordController,
                ),
                SizedBox(
                  height: setHeight(10.0),
                ),
                TextInput(
                  hint: 'Confirm password',
                  icon: Icons.lock,
                  controller: _confirmPasswordController,
                ),
                SizedBox(
                  height: setHeight(30.0),
                ),
                SizedBox(
                  width: setWidth(350.0),
                  height: setHeight(50.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('REGISTER',
                        style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )
        )
    );
  }
}
