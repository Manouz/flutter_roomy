import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Second extends StatelessWidget {
  const Second({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Row(
        children: [
          Stack(
            children: <Widget>[
            Container(
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  // assign the color to the border color
                  color: Color.fromRGBO(213, 197, 174, 1),
                ),
                //borderRadius: BorderRadius.all(),
              ),
              
            ),
            Container(
              width: 120,
              height: 20,
             // child: Icon(FontAwesomeIcons.magnifying-glass),
                //borderRadius: BorderRadius.all(),
            ),
           
            // Container(
            //   width: 90,
            //   height: 90,
            //   color: Colors.green,
            // ),
            ],
          ),
          //Padding(padding: EdgeInsets.only(left: 1)),
          Container(               
              child: Text.rich(
                TextSpan(
                  text: "V",
                  style: GoogleFonts.italiana(
                    fontSize: 40,
                    color: const Color.fromRGBO(205, 151, 19, 1),
                    ),          
                    children: <TextSpan>[
                      TextSpan(
                        text: "ogue",
                        style: GoogleFonts.italiana(fontSize: 19),
                      )
                    ],
                  ),
              ),
              ),
        ],
          ),
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(218, 212, 196, 1),
        child: Row(
          children:[
            Container(
              height: 50,
              //child: Icon(FontAwesomeIcons.maxmark-largers),
            ),
          ], 
        ),
      ),
    );
  }
}


/* children: [
                Column(
                  color:Colors.amber,
                  // width:10 ,
                  // height: 5,
                  children: [
                  ],
                ),
                Column(
                ),
              ], */