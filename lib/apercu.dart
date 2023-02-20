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
              width: 155,
              height: 270,
              image: AssetImage('assets/images/♛.jpeg'),
              fit: BoxFit.fill,
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
            Container(
              color: Colors.amber,
              //padding: EdgeInsets.only(top:1),
              child: Text.rich(
                TextSpan(
                  text: "D",
                  style: GoogleFonts.kurale(
                      color: Color.fromRGBO(0, 0, 0, 0.55), fontSize: 19),
                  children: <TextSpan>[
                    TextSpan(
                        text: texte2, style: GoogleFonts.kurale(fontSize: 6)),
                    //TextSpan(text: 'qui se respire et n’est aucunement', style:GoogleFonts.kurale(fontSize: 2)),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 160),

              transform: Matrix4.rotationZ(0),
              transformAlignment: Alignment(2.1, 1),
              //padding: EdgeInsets.only(top:30),
              //color: Colors.amber,
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
      floatingActionButton: FloatingActionButton(
        child: Text("c'Partie!",style: TextStyle(fontSize: 8,color: Colors.amber,)),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (builder) => const Second()));
        },
      ),
    );
  }
}
