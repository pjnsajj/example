import 'package:flutter/material.dart';
import 'package:ishtapp111/media_page/music_page/music_search_page.dart';

class MusicMenuList extends StatefulWidget {
  const MusicMenuList({super.key});

  @override
  State<MusicMenuList> createState() => _MusicMenuListState();
}

class _MusicMenuListState extends State<MusicMenuList> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MusicSearchScreen(),
    Text('Избранное'),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: 'Избранное',
          ),
        ],
        currentIndex: _selectedTab,
        onTap: onSelectedTab,
      ),
    );
  }
}
