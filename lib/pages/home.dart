// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //defining the app bar which has the mood asker
        appBar: AppBar(
          elevation: 0,
        backgroundColor: HexColor("#14133E"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Hi John!',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),


  // defining the body with a centered column

  body: SingleChildScrollView(
    child: Center(
      child: Column(
        children: [
          // make a cool look with the emoji's scrolling down
          ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0)),
            child: Container(
              color: HexColor("#14133E"),
              child: Column(
                children: [
            const SizedBox(height:35),
                  Text(
                    'How are you doing today?',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      )
                    ),
                  ),
                  ClipRRect(
                  borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0)),
                  child: Image.asset('assets/emoji.png'),
                  ),
                  const SizedBox(height:15),
                ],
              )
            ),
          ),
           Text(
           'Stress Level',
             style: GoogleFonts.poppins(
             textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black
                )
              ),
           ),
          const SizedBox(height: 5),
          ClipRRect(
            child: Image.asset('assets/chart.png'),
          ),
          const SizedBox(height:40),
          Text(
           'Explore More things',
             style: GoogleFonts.poppins(
             textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black
                )
              ),
           ),
          const SizedBox(height:10),
           // added a row to add some containers for some cool UI
           Row(
             children: [
               Expanded(
                 child: Container(
                   height: 130,
                   child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                ),
                    elevation: 3,
                    color: HexColor("#F7FDFF"),
                     child: ListTile(
                       title: Padding(
                         padding: const EdgeInsets.only(top: 30.0),
                         child: Text(
                           'Mind Relaxing',
                           style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                               fontSize: 13,
                               fontWeight: FontWeight.w500,
                               color: Colors.black
                             )
                           ),
                         ),
                       ),
                       subtitle: Text(
                         'Give your mind a relief from your daily rotuine.',
                         style: GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             fontSize: 9,
                             fontWeight: FontWeight.w500,
                             color: Colors.black
                           )
                         ),
                       ),
                     ),
                   ),
                 ),flex: 2,
               ),
                Expanded(
                 child: Container(
                   height: 130,
                   child: Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                ),
                    elevation: 3,
                    color: HexColor("#F6FDF8"),
                     child: ListTile(
                       title: Padding(
                         padding: const EdgeInsets.only(top: 30.0),
                         child: Text(
                           'Breathing',
                           style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                               fontSize: 13,
                               fontWeight: FontWeight.w500,
                               color: Colors.black
                             )
                           ),
                         ),
                       ),
                       subtitle: Text(
                         'Relax your body with a daily dose of wiggle.',
                         style: GoogleFonts.poppins(
                           textStyle: const TextStyle(
                             fontSize: 9,
                             fontWeight: FontWeight.w500,
                             color: Colors.black
                           )
                         ),
                       ),
                     ),
                   ),
                 ),flex: 2
               ),
             ],
           ),
    // adding the code for the continue section
          const SizedBox(height:40),
          Text(
           'Explore More things',
             style: GoogleFonts.poppins(
             textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black
                )
              ),
           ),
          const SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  ),

                      color: HexColor("#EEF7FD"),
                       child: ListTile(
                         title: Padding(
                           padding: const EdgeInsets.only(top: 10.0),
                           child: Text(
                             'Meditation',
                             style: GoogleFonts.poppins(
                               textStyle: const TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.black
                               )
                             ),
                           ),
                         ),
                         subtitle: Text(
                           'Give your body a sigh of relief',
                           style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                               fontSize: 11,
                               fontWeight: FontWeight.w500,
                               color: Colors.black
                             )
                           ),
                         ),
                       ),
                     ),
          ),
          const SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  ),
                      color: HexColor("#EEF7FD"),
                       child: ListTile(
                         title: Padding(
                           padding: const EdgeInsets.only(top: 10.0),
                           child: Text(
                             'Motivation',
                             style: GoogleFonts.poppins(
                               textStyle: const TextStyle(
                                 fontSize: 15,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.black
                               )
                             ),
                           ),
                         ),
                         subtitle: Text(
                           'Get some motivation from some knows personalities.',
                           style: GoogleFonts.poppins(
                             textStyle: const TextStyle(
                               fontSize: 11,
                               fontWeight: FontWeight.w500,
                               color: Colors.black
                             )
                           ),
                         ),
                       ),
                     ),
          ),
        ],
      ),
    ),
  ),

    );
  }
}