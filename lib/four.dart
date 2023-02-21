import 'package:flutter/material.dart';
import 'package:flutter_roomy/second.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class four extends StatefulWidget {
  const four({super.key});
  @override
  fourTATE createState() => fourTATE();
}

class fourTATE extends State<four> {
  @override
  Widget build(BuildContext context) {
    const texte1 = '''
      Le parfum est un poème 
      qui se respire et n’est aucunement  
      dissocié de la mode. Sentir bon et  
      bien s’habiller font l’essence 
      de notre existence. 
      ''';
    const texte2 = '''
      Deux choses rendent 
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
            Padding(padding: EdgeInsets.only(top: 150)),
            Image(
              width: 160,
              height: 260,
              image: AssetImage('assets/images/♛.jpeg'),
              fit: BoxFit.cover,
            ),
            Container(
              //padding: EdgeInsets.only(top: 0, left: 50),
              transformAlignment: Alignment(0, -0.1),
              //color: Colors.amber,
              transform: Matrix4.rotationZ(0.6),
              child: const Image(
                image: AssetImage('assets/images/flèche.png'),
                width: 198,
                height: 260,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 0.4, top: 120),
              child: Text(
                texte1,
                style: GoogleFonts.kurale(
                    color: Color.fromRGBO(0, 0, 0, 0.55),
                    fontSize: 11.8,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              texte2,
              style: GoogleFonts.kurale(
                  color: Color.fromRGBO(0, 0, 0, 0.55),
                  fontSize: 11.8,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(left: 165, top: 1),
              //transform: Matrix4.rotationZ(0),
              transformAlignment: Alignment(2.1, 1),
              //padding: EdgeInsets.only(top:30),
              //color: Colors.amber,
              child: const Image(
                width: 200,
                height: 250,
                image: AssetImage('assets/images/🖤.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (builder) => const Second()));
              },
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.51),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Text(
                    "c'Partie!",
                    style: GoogleFonts.kurale(
                      color: Color.fromRGBO(205, 151, 19, 1),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
