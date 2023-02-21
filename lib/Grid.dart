import 'package:flutter/material.dart';
import 'itemCard.dart';

Color gold = const Color(0XFFCD9713);
Color drawer = const Color.fromRGBO(218, 212, 196, 1);
final data = [1, 2];

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
      children: [Third(), Third(), Third()],
    ));
  }
}
