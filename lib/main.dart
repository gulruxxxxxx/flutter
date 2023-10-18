

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Main",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "My board",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "History",
              ),


            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Text(
                    "This is a home page",
                    textAlign: TextAlign.left,
                    maxLines: null,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),


              );
            } else if (index == 1) {
              return CupertinoPageScaffold(
                child:
                Center(
                  child: Text(
                    "This is settings page",
                    textAlign: TextAlign.right,
                    maxLines: null,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),

              );
            } else if (index == 2) {
              return CupertinoPageScaffold(
                child:
                Center(
                  child: Text(
                    "This is search page",
                    textAlign: TextAlign.right,
                    maxLines: null,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),

              );
            }else if (index == 3) {
              return CupertinoPageScaffold(
                child:
                Center(
                  child: Text(
                    "This is search page",
                    textAlign: TextAlign.right,
                    maxLines: null,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),

              );
            }else if (index == 4) {
    return CupertinoPageScaffold(
    child:
    Center(
    child: Text(
    "This is search page",
    textAlign: TextAlign.right,
    maxLines: null,
    overflow: TextOverflow.fade,
    style: TextStyle(
    color: Colors.redAccent,
    fontSize: 35,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
    ),
    ),
    ),

    );
            }
          }
      ),

    );
  }
}