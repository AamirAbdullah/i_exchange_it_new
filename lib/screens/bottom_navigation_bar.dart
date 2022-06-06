import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_exchange_it/screens/chats.dart';
import 'package:i_exchange_it/confiq/confiq.dart' as config;
import 'package:i_exchange_it/screens/home_screen.dart';
import 'package:i_exchange_it/screens/notifications.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    Notifications(),
    Text('data3'),
    Chats(),
    Text('data5'),
  ];

  onItemTapped(
    int index,
  ) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption: Theme.of(context).textTheme.bodyText2!.merge(
                        TextStyle(color: Theme.of(context).focusColor)))),
            child: BottomNavigationBar(
              selectedItemColor: Colors.orange,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              backgroundColor: config.Colors().scaffoldDarkColor(0.98),
              onTap: onItemTapped,
              unselectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.home,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.bell),
                  label: "Notifications",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.add_circled_solid,
                    color: Colors.orange,
                  ),
                  label: "Place an Ad",
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.conversation_bubble),
                  label: "Chats",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.person,
                  ),
                  label: "Account",
                ),
              ],
            )),
      ),
    );
  }
}
