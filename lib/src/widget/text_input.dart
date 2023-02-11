import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInput extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  final FocusNode focusNode;

  TextInput(
      {required this.hint, required this.controller, required this.icon})
      : focusNode = FocusNode();

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  void initState() {
    widget.focusNode.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: SizedBox(
        width: 350.0,
        child: TextField(
          focusNode: widget.focusNode,
            cursorColor: Colors.white,
            controller: widget.controller,
            style: TextStyle(
              color: Colors.white
            ),
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.background,
                  ),
                ),
                prefixIcon: Icon(
                    widget.icon,
                    color: widget.focusNode.hasFocus ? Theme.of(context).colorScheme.primary : Colors.white
                ),
                hintText: widget.hint,
                hintStyle: GoogleFonts.barlow(
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),
                focusColor: Colors.white,
                hoverColor: Colors.white
            )
        ),
      ),
    );
  }
}
