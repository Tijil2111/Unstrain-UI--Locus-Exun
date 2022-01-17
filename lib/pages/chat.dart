import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unstrain/shared/constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({ Key? key }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'ChatBot',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),


            // defining all the messages
            Row(
              children: [
                const SizedBox(width: 160,),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width:200,
                    color: HexColor("#14133E"),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 15),
                          child: Text(
                            'Hello! How are you doing ?',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 10,),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width:200,
                    height: 50,
                    color: HexColor("#ECECEC"),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 15),
                          child: Text(
                            "I am fine. What's up?",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
      
      const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 160,),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width:200,
                    color: HexColor("#14133E"),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 15),
                          child: Text(
                            'I am fine. What about you?',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 10,),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Container(
                    width:200,
                    height: 50,
                    color: HexColor("#ECECEC"),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5, top: 15),
                          child: Text(
                            "Hehe!! I am just so good.",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                              )
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 230,),


      // defining the message sending button
             Padding(
                padding: const EdgeInsets.all(16.0),
                //declaring an edit field
                child: TextFormField(
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  )
                ),
                decoration: InputDecoration(  
                suffixIcon: const Icon(Icons.send, color: Colors.black),
                border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                borderSide: BorderSide.none,
                  ),
                filled: true,
                fillColor: HexColor("#ECECEC"),
                hintText: "Your Message",
                hintStyle: const TextStyle(color: Colors.black, ),
                contentPadding: const EdgeInsets.fromLTRB(35,20,0,20),
            ),
                ),
              ),
        ],
        ),
      ),
    );
  }
}