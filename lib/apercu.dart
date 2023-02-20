import 'package:flutter/material.dart';
import 'package:flutter_roomy/second.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      //appBar: AppBar(),
      body: Stack(children: [
        Container(
          padding: EdgeInsets.only(top: 40, left: 19),
          child: Text(
            "Roomy",
            style: GoogleFonts.italianno(
              fontSize: 50,
              color: const Color.fromRGBO(205, 151, 19, 1),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 170)),
            Image(
              width: 190,
              height: 300,
              image: AssetImage('assets/images/♛.jpeg'),
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.only(top: 1),
              transformAlignment: Alignment(2, -0.3),
              transform: Matrix4.rotationZ(0.4),
              child: const Image(
                image: AssetImage('assets/images/flèche.png'),
                width: 200,
                height: 360,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 1, top: 140),
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
                      style: GoogleFonts.kurale(fontSize: 11.8),
                      //textAlign: TextAlign.left
                    )
                    //TextSpan(text: 'qui se respire et n’est aucunement', style:GoogleFonts.kurale(fontSize: 2)),
                  ],
                ),
              ),
            ),
            Container(
              //color: Colors.amber,
              //padding: EdgeInsets.only(top: 1),
              child: Text.rich(
                TextSpan(
                  text: "D",
                  style: GoogleFonts.kurale(
                      color: Color.fromRGBO(0, 0, 0, 0.55), fontSize: 19),
                  children: <TextSpan>[
                    TextSpan(
                        text: texte2,
                        style: GoogleFonts.kurale(fontSize: 11.8)),
                    //TextSpan(text: 'qui se respire et n’est aucunement', style:GoogleFonts.kurale(fontSize: 2)),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 195, top: 1),
              transform: Matrix4.rotationZ(0),
              transformAlignment: Alignment(2.1, 1),
              //padding: EdgeInsets.only(top:30),
              //color: Colors.amber,
              child: const Image(
                width: 200,
                height: 340,
                image: AssetImage('assets/images/🖤.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton.large(
        focusColor: Color.fromRGBO(0, 0, 0, 0.51),
        child: Text(
          "c'Partie!",
          style: TextStyle(
            fontSize: 23,
            color: Colors.amber,
            //fontFamily:GoogleFonts().kurale(fontSize: 6),
          ),
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (builder) => const Second()));
        },
      ),
    );
  }
}
