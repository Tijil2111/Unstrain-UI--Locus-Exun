import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unstrain/shared/constants.dart';



class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //declaring the app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          //declaring route to welcome screen
          onTap: (){
            Navigator.pushReplacementNamed(context, '/');
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,size: 16,)
        ),
        title: Text(
          'Signin',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600)
          ),
        ),
        centerTitle: true,
      ),
      //defining the centered column 

      body: Center(
        child: Column(
          children: [
             const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              //declaring an edit field
              child: TextFormField(
            decoration: textInputDecoration.copyWith(hintText: "Email")
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              //declaring an edit field
              child: TextFormField(
              decoration: textInputDecoration.copyWith(hintText: "Password")
              ),
            ),
          ],
        ),
      ),
    );
  }
}