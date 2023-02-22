import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color gold = const Color(0XFFCD9713);

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index % 2 == 0
          ? const EdgeInsets.only(left: 12)
          : const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          border: Border.all(color: gold, width: 1.0),
          borderRadius: BorderRadius.circular(25)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Column(children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: SizedBox(width: double.infinity,
                  child: Image.asset(
                    "assets/images/bgette.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                  flex: 0,
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            "Madame Tant",
                            style: GoogleFonts.italianno(fontSize: 34),
                          ),
                        ),
                        Text(
                          "XOF",
                          style:
                              GoogleFonts.italiana(color: gold, fontSize: 24),
                        ),
                        Text(
                          "100",
                          style: GoogleFonts.italiana(
                              color: Colors.black, fontSize: 24),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_circle_right_rounded))
                        /* Hero(tag: icon, child: FaIcon(icon.circle-arrow-right)),
                        Icon:Icon.FaIcon(FontAwesomeIcons.circle-arrow-right), */
                        // onPressed: onPressed
                        // Icon.FaIcon("circle"),
                      ],
                    ),
                  ))
            ],
          ))
        ]),
      ),
    );
  }
}
