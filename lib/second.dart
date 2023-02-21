import 'package:flutter/material.dart';
import 'package:flutter_roomy/itemCard.dart';
import 'drawer.dart';

TextEditingController searchCtrl = TextEditingController();

Color gold = const Color(0XFFCD9713);
Color drawer = const Color.fromRGBO(218, 212, 196, 1);
final data = [1, 2];

class Second extends StatelessWidget {
  const Second({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(border: Border.all(width: 1.0, color: gold)),
              child: TextField(
                controller: searchCtrl,
                enabled: true,
                keyboardType: TextInputType.text,
                autocorrect: true,
                cursorColor: gold,
                decoration: const InputDecoration(
                    hintText: "Recherchez ici ! ",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                    icon: Text(
                  "Catalogue",
                  style: TextStyle(color: Colors.amber, fontSize: 20),
                )),
                Tab(
                    icon: Text(
                  "Parfurmerie",
                  style: TextStyle(color: Colors.amber, fontSize: 17),
                )),
                Tab(
                    icon: Text(
                  "Mode",
                  style: TextStyle(color: Colors.amber, fontSize: 20),
                )),
              ],
            ),
          ),
          drawer: const NavigationDrawerWidget(),
          body: Column(
            children: [
              const SizedBox(height: 30),
              Expanded(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 250,
                      crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemCard(index: index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
