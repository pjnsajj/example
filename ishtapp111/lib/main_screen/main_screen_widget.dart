import 'package:flutter/material.dart';
import 'package:ishtapp111/media_page/media_screen.dart';

//import '../music_page/music_page.dart';
import '../search_list/search_list.dart';


class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
int _selectedTab = 0;
// static const List<Widget> _widgetOptions = <Widget> [
//   SeachList(),
//   Text('Избранное'),
//   Text('Чат'),
//   Text('Обучение'),
//   MusicPlayer (),
// ];


void onSelectedTab(int index){
  if (_selectedTab == index) return;
  setState(() {
    _selectedTab = index;
  });
}

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text('ishtapp'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu_outlined),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_2_outlined),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: const [
            SeachList(),
            Text('Избранное'),
            Text('Чат'),
            Text('Обучение'),
            MediaScreen(),
        ],

      ),
      
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_alt_outlined),
            label: 'Избранное',
          ),
       
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Чат',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Обучение',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_filled_rounded),
            label: 'Медиа',
          )
        ],
       currentIndex: _selectedTab,
       onTap: onSelectedTab,
      ),
    );

  }
}
