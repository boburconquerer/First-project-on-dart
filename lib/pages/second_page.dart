import 'package:flutter/material.dart';
import 'package:mydemo1/pages/search_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  static const String id = "SecondPage";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 20,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Intime"),
              background: Image(image: AssetImage("assets/images/giel.png"), fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Column(
              children: [
                Container(
                    child: Text("qweeyruyweuwyueuwqyruwrywyry")
                ),
                Container(
                    child: Text("qweeyruyweuwyueuwqyruwrywyry")
                ),
                Container(
                    child: Text("qweeyruyweuwyueuwqyruwrywyry")
                ),
                Container(
                    child: Text("qweeyruyweuwyueuwqyruwrywyry")
                ),

              ],
            )
          ])
          )
        ],
      )
    );
  }
  // List _buildList(int count){
  //   List<Widget> items = [];
  //   for(int i = 0; i < count; i++){
  //     items.add(_itemList(i));
  //   }
  //   return items;
  // }
  // Widget _itemList(int i){
  //   return Container(
  //     height: 50,
  //     child: Center(
  //       child: Text("Item ${i.toString()}"),
  //     ),
  //   );
  // }
}
