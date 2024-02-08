import 'package:flutter/material.dart';
import 'package:mydemo1/pages/search_page.dart';

import 'button_page.dart';
import 'follow_page.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});
  static const String id = "NewPage";

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = [
      Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child:Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, FollowPage.id);
                    },
                    child: Text("Click", style: TextStyle(fontSize: 24),),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.yellow,
                        backgroundColor: Colors.white
                    )
                )
                ,
              )
            ],
          )
      ),
      Container(
        color: Colors.red,
        alignment: Alignment.center,
        child:Column(
          children: [

            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ButtonPage.id);
                },
                child: Text("Click", style: TextStyle(fontSize: 24),),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.white
                ),
              ),
            )
          ],
        ) ,
      ),
      Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Column(

          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                Navigator.pushNamed(context, SearchPage.id);
              },
                child: Text("Click", style: TextStyle(fontSize: 24),),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    ];
    return Scaffold(
      // body: Row(
      //   children: <Widget>[
      //     NavigationRail(
      //       selectedIndex: _selectedIndex,
      //       onDestinationSelected: (int index){
      //         setState(() {
      //           _selectedIndex = index;
      //         });
      //         },
      //       labelType: NavigationRailLabelType.selected,
      //       destinations: [
      //         NavigationRailDestination(
      //           icon: Icon(Icons.favorite_border),
      //           selectedIcon: Icon(Icons.favorite),
      //           label: Text("Favorite"),
      //         ),
      //         NavigationRailDestination(
      //             icon: Icon(Icons.bookmark_border),
      //             selectedIcon: Icon(Icons.book),
      //             label: Text("Bookmark")),
      //         NavigationRailDestination(
      //             icon: Icon(Icons.star_border),
      //             selectedIcon: Icon(Icons.star),
      //             label: Text("Star"))
      //       ],
      //     ),
      //     VerticalDivider(thickness: 1, width: 1),
      //     Expanded(
      //       child: Center(
      //         child: Text("selected index: $_selectedIndex"),
      //       ),
      //     ),
      //   ],
      // ),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            destinations: [
              NavigationRailDestination(
                          icon: Icon(Icons.favorite_border),
                          selectedIcon: Icon(Icons.favorite),
                          label: Text("Favorite"),
                        ),
              NavigationRailDestination(
                            icon: Icon(Icons.bookmark_border),
                            selectedIcon: Icon(Icons.book),
                            label: Text("Bookmark")),
              NavigationRailDestination(
                            icon: Icon(Icons.star_border),
                            selectedIcon: Icon(Icons.star),
                            label: Text("Star"))
            ],
          ),
          Expanded(child: _screens[_selectedIndex])
        ],
      ),
    );
  }
}
