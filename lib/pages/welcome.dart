

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);
// Building the basic welcome screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#DCFFFF"),
//center widget
      body: Center(
        //applying a column as all widgets come in a vertical row
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            'Unstrain',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize:23,
                fontWeight: FontWeight.w600
              )
            ),
            ),
          const SizedBox(
            height: 80,
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,30,10),
            child: ClipRect(
              child: Image.asset('assets/pic1.png')
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Welcome,',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize:32,
                fontWeight: FontWeight.w600
              )
            ),
            ),
            const SizedBox(
            height: 15,
          ),
          Text(
            'Find you inner peace with relaxing exercise and a lot of other things.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize:13,
                fontWeight: FontWeight.w600,
              )
            ),
          ),
          const SizedBox(
            height: 30,
          ),
// Code for the button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                minWidth: 300,
                height: 60,
                child: RaisedButton(
                  //making the routing and routing the button to register screen
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: HexColor("#14133E"),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:90.0),
                        child: Text(
                          "Let's get you started",
                          style: GoogleFonts.poppins(
                            textStyle:const TextStyle(
                            color: Colors.white
                          ),
                          )
                        ),
                      ),
                      const SizedBox(width: 60,),
                      const Icon(Icons.arrow_forward, color:Colors.white)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),

            //code for clickable text
          
            InkWell(
              //routing it to login page
              onTap: (){
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Text('Already have an account ? Sign In',
               style: GoogleFonts.poppins(
                 textStyle: const TextStyle(
                   fontWeight: FontWeight.w600,
                    fontSize: 14)
                    ),
                    ),
                  )
            
        ],
        )
      ),
    );
  }
}