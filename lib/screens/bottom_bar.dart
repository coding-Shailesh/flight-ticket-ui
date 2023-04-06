import 'package:booktickets/screens/Search_screen.dart';
import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/mapScreen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0 ;
  static final List<Widget> _WidgetOptions = <Widget>[

    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const MapScreen(),
  ];

  void _onItemTaped(int index){
    setState(() {
      _selectedIndex=index;
      print('onintemtaped');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _WidgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
       currentIndex:_selectedIndex,
        onTap: _onItemTaped,  //When you pass the _onItemTaped function as a parameter to the onTap property,
                             // you are not actually calling the function, but rather passing a reference to the function itself.
        elevation: 10,
        showSelectedLabels: false,
     showUnselectedLabels: false,
     selectedItemColor: Colors.blueGrey,
     unselectedItemColor: Colors.grey,
     type: BottomNavigationBarType.fixed,
     items: [
        const BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),  label: 'home'),
       const BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
           activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),label: 'search'),
       const  BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
           activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: 'ticket'),
       const  BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_location_regular),
           activeIcon: Icon(FluentSystemIcons.ic_fluent_location_filled),label: 'person'),
      ],

      ),
    );
  }
}
