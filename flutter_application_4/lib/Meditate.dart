import 'dart:html';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
  
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        // backgroundColor: Colors.lightBlue,
         body: Center(
           child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: 500,
                      height: 930,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    // Padding(padding: EdgeInsets.fromLTRB(160, 160, 0, 0),
                    //    child: Container(
                    //     child: const Image(image: AssetImage('medinow.png'),),
                    //   )
                    // ),    
                    Padding(padding:  EdgeInsets.fromLTRB(20, 50, 0, 0),
                      child: Container(
                        child: Text('Meditate',
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)
                        ),
                      )
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(420, 40, 0, 0),
                      child: Container(
                        width: 200,
                        height: 45,
                        child: IconButton(
                          icon: Image.asset('Frame3.png'),
                          iconSize: 50,
                          onPressed: () {},
                        )
                      )         
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(0, 90, 0, 0),
                      child: Container(
                        child: Text('_______________________________________________________',
                          style: TextStyle(
                            color: Color.fromRGBO(235, 235, 235, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)
                        ),
                      )
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(20, 130, 0, 0),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(3, 158, 162, 1),
                          shape: StadiumBorder(),
                              // shape: new CircleBorder(),
                              // fillColor: Colors.deepPurple,
                              
                          ),
                          onPressed: () => {},
                          child: Text('All',
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      )         
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(80, 130, 0, 0),
                      child: Container(
                        width: 130,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(230, 254, 255, 1),
                          shape: StadiumBorder(),
                              // shape: new CircleBorder(),
                              // fillColor: Colors.deepPurple,
                              
                          ),
                          onPressed: () => {},
                          child: Text('Bible In a Year',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color.fromRGBO(3, 158, 162, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      )         
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(220, 130, 0, 0),
                      child: Container(
                        width: 80,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(230, 254, 255, 1),
                          shape: StadiumBorder(),
                              // shape: new CircleBorder(),
                              // fillColor: Colors.deepPurple,
                              
                          ),
                          onPressed: () => {},
                          child: Text('Dailies',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color.fromRGBO(3, 158, 162, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      )         
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(310, 130, 0, 0),
                      child: Container(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(230, 254, 255, 1),
                          shape: StadiumBorder(),
                              // shape: new CircleBorder(),
                              // fillColor: Colors.deepPurple,
                              
                          ),
                          onPressed: () => {},
                          child: Text('Minutes',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color.fromRGBO(3, 158, 162, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      )         
                    ),
                    Padding(padding:  EdgeInsets.fromLTRB(410, 130, 0, 0),
                      child: Container(
                        width: 110,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(230, 254, 255, 1),
                          shape: StadiumBorder(),
                              // shape: new CircleBorder(),
                              // fillColor: Colors.deepPurple,
                              
                          ),
                          onPressed: () => {},
                          child: Text('Novem',
                          style: GoogleFonts.plusJakartaSans(
                            color: Color.fromRGBO(3, 158, 162, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      )         
                    ),
                       Padding(padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                       child: Container(
                        width: 500, 
                        height: 300,
                        child: IconButton(
                          icon: Image.asset('AppClip.png'),
                          iconSize: 50,
                          onPressed: () {},
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 500, 0, 0),
                       child: Container(
                        width: 300, 
                        height: 200,
                        child: IconButton(
                          icon: Image.asset('AppClip1.png'),
                          iconSize: 50,
                          onPressed: () {},
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(190, 500, 0, 0),
                       child: Container(
                        width: 300, 
                        height: 200,
                        child: IconButton(
                          icon: Image.asset('AppClip2.png'),
                          iconSize: 50,
                          onPressed: () {},
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 710, 0, 0),
                       child: Container(
                        width: 300, 
                        height: 200,
                        child: IconButton(
                          icon: Image.asset('AppClip3.png'),
                          iconSize: 50,
                          onPressed: () {},
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(190, 710, 0, 0),
                       child: Container(
                        width: 300, 
                        height: 200,
                        child: IconButton(
                          icon: Image.asset('AppClip4.png'),
                          iconSize: 50,
                          onPressed: () {},
                        )
                      )
                    )
          ]
        )
      ]
    )
  )
);
  }
}