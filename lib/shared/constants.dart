import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


//declaring a textInput final variable that holds a input decoration which is used in text input fields. this makes code cleaner and much readable.

final textInputDecoration= InputDecoration(
    border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(90.0)),
    borderSide: BorderSide.none,
      ),
    filled: true,
    fillColor: HexColor("#ECECEC"),
    hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
    contentPadding: const EdgeInsets.fromLTRB(35,20,0,20),
);