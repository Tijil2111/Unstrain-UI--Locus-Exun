import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //defining the profile page
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        leading:  InkWell(
          //declaring route to main home screen
          onTap: (){
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,size: 16,)
        ),
      ),


      // defining the home screen
      body: Center(
        child: Column(
         children: [
            const SizedBox(height: 40),

            ClipRRect(
              child: Image.asset('assets/profile.png')
            ),
            const SizedBox(height: 20),
          Text(
           'John Doe',
             style: GoogleFonts.poppins(
             textStyle: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: Colors.black
                )
              ),
           ),
         ],
        ),
      )
    );
  }
}