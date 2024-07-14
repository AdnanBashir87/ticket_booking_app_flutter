import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../screens/home/home_page.dart';
import '../screens/search/search_page.dart';
import '../screens/ticket/tickets_page.dart';

class BaseNavigationBar extends StatefulWidget {
  const BaseNavigationBar({super.key});

  @override
  State<BaseNavigationBar> createState() => _BaseNavigationBarState();
}

class _BaseNavigationBarState extends State<BaseNavigationBar> {
  int _selectedItem = 0;
  final List tabItem = [
    const HomePage(),
    const SearchPage(),
    const TicketsPage(),
  ];

  void _onItemTapped(int item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabItem[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedItem,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xff526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Tickets'),
        ],
      ),
    );
  }
}
