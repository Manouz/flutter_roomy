import 'material.dart';
import 'itemCard';






// import 'package:flutter/material.dart';


// class ItemCard extends StatelessWidget {
//   const ItemCard({super.key, required this.index});

//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: index % 2 == 0
//           ? const EdgeInsets.only(left: 12)
//           : const EdgeInsets.only(right: 12),
//       decoration: BoxDecoration(
//           border: Border.all(color: gold, width: 1.0),
//           borderRadius: BorderRadius.circular(25)),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(25),
//         child: Column(children: [
//           Expanded(
//               child: Column(
//                 children: [
//                   Expanded(
//                   child: Container(
//                     padding: EdgeInsets.only(top: 10),
//                     width: 120,
//                     child:ClipRRect( 
//                       borderRadius: BorderRadius.circular(25),
//                       child: Image.asset(
//                       "assets/images/bgette.jpeg",             
//                       fit: BoxFit.cover,
//                   ),
//                   ), 
//                  // width: double.infinity, 
//                 ),
//               ),
//               Expanded(
//                   flex: 0,
//                   child: Row(
//                    children: [
//                      Text(
//                             "Madame Tant",
//                             style: GoogleFonts.italianno(fontSize: 34),
//                           ),
//                    ],)),
//                   Expanded(
//                   flex: 1,
//                   child: Row(
//                    children: [
//                      Text("XOF",
//                            style:
//                               GoogleFonts.italiana(color: gold, fontSize: 24),
//                           ),
//                       Text(
//                           "100",
//                           style: GoogleFonts.italiana(
//                               color: Colors.black, fontSize: 24),
//                         ),

//                       GestureDetector(
//                             onPressed: () {
//                               Navigator.pushReplacement(context,MaterialPageRoute(builder: (builder)=> const Connexion())),
//                             },
//                             child: Icon(Icons.arrow_circle_right_rounded,color: gold,size: 30,)
//                       )
//                     ],)),   
//                       ],
//                     ),
//                   )
            
//           ],),
//         ),
//       ////),
//     );
//   }
// }
