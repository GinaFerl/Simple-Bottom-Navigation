import 'package:flutter/material.dart';
import 'package:simple_bottom_navigation/pages/call/call_page.dart';
import 'package:simple_bottom_navigation/pages/chat/chat_page.dart';
import 'package:simple_bottom_navigation/pages/community/community_page.dart';
import 'package:simple_bottom_navigation/pages/update/update_page.dart';

class BottomNavigationBarSample extends StatefulWidget {
  const BottomNavigationBarSample({super.key});

  @override
  State<BottomNavigationBarSample> createState() =>
      _BottomNavigationBarSampleState();
}

class _BottomNavigationBarSampleState extends State<BottomNavigationBarSample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ChatPage(),
    UpdatePage(),
    CommunityPage(),
    CallPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar Example"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.refresh), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: 'Communities')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}
