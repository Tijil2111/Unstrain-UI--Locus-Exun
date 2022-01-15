import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unstrain/shared/constants.dart';



class RegisterPage extends StatelessWidget {

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
          'Register',
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
            decoration: textInputDecoration.copyWith(hintText: "Name")
              ),
            ),
            const SizedBox(height: 10),
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
              decoration: textInputDecoration.copyWith(hintText: "Passoword")
              ),
            ),
            const SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                height: 45,
                minWidth: 135,
                child: RaisedButton(
                  //making the routing and routing the button to home screen
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: Colors.black, width: 2)
                    ),
                  color: Colors.white,
                  elevation: 0,
                  child: Text(
                    'Submit',
                    style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600)
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}