import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

void main() {
  runApp(const MyApp());
}

// var texte = "lol";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Corps(),
    );
  }
}

// ignore: camel_case_types
class Corps extends StatefulWidget {
  const Corps({super.key});
  @override
  CORPSTATE createState() => CORPSTATE();
}

class CORPSTATE extends State<Corps> {
  @override
  Widget build(BuildContext context) {
    final texte1 = '''
e parfum est un poème 
qui se respire et n’est aucunement  
dissocié de la mode. Sentir bon et  
bien s’habiller font l’essence 
de notre existence. 
''';
    final texte2 = '''
eux choses rendent 
les femmes inoubliables, 
leurs féminité et leurs
 parfum attirant.
''';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Roomy",
          style: GoogleFonts.italianno(
            fontSize: 40,
            color: const Color.fromRGBO(205, 151, 19, 1),
          ),
        ),
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 25)),
            Image(
              width: 150,
              height: 270,
              image: AssetImage('assets/images/♛.jpeg'),
              fit: BoxFit.cover,
            ),
            Container(
              transformAlignment: Alignment(-0.5, 0.6),
              transform: Matrix4.rotationZ(0.4),
              child: const Image(
                image: AssetImage('assets/images/flèche.png'),
                width: 180,
                height: 240,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(left: 3),
              color: Colors.amber,
              //padding: EdgeInsets.only(top:),

              child: Text.rich(
                TextSpan(
                  text: "L",
                  style: GoogleFonts.kurale(
                    color: Color.fromRGBO(0, 0, 0, 0.55),
                    fontSize: 19,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: texte1,
                      style: GoogleFonts.kurale(fontSize: 6),
                      //textAlign: TextAlign.left
                    )

                    //TextSpan(text: 'qui se respire et n’est aucunement', style:GoogleFonts.kurale(fontSize: 2)),
                  ],
                ),
              ),
            ),
            // Container(color: Colors.amber,

            //     //padding: EdgeInsets.only(top:1),
            //     child: Text.rich(
            //     TextSpan(
            //       text: "D",

            //       style: GoogleFonts.kurale(
            //           color: Color.fromRGBO(0, 0, 0, 0.55), fontSize: 19),
            //       children: <TextSpan>[
            //         TextSpan(
            //             text: texte2,
            //             style: GoogleFonts.kurale(fontSize: 6)),
            //         //TextSpan(text: 'qui se respire et n’est aucunement', style:GoogleFonts.kurale(fontSize: 2)),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.only(right: 70),

              transform: Matrix4.rotationZ(0),
              transformAlignment: Alignment(2.1, 1),
              //padding: EdgeInsets.only(top:30),
              color: Colors.amber,
              child: const Image(
                width: 160,
                height: 270,
                image: AssetImage('assets/images/🖤.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
