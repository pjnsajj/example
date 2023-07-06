import 'package:flutter/material.dart';
import 'package:ishtapp111/screens/media_screen.dart';
import 'package:ishtapp111/music_page/music_player.dart';
import 'package:ishtapp111/radio_page/hit_fm.dart';
import 'package:ishtapp111/radio_page/kg_obondoru.dart';
import 'package:ishtapp111/radio_page/evropa_plus_kg.dart';
import 'package:ishtapp111/radio_page/radio_main_screen.dart';
import 'package:ishtapp111/radio_page/retro_fm.dart';
import 'package:ishtapp111/radio_page/suyunchu_fm.dart';

import 'screens/main_screen_widget.dart';
import 'music_page/music_menu_list.dart';
import 'music_page/music_page.dart';
import 'screens/auth_screen.dart';
import 'screens/register_screen.dart';
import 'screens/start_screen_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'istapp', debugShowCheckedModeBanner: false  ,
      theme: ThemeData(
    
       appBarTheme: const AppBarTheme(
        backgroundColor: Colors.green
       ),
       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.green,
         selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
       )
      ),
      routes: {
        'start_screen':(context) => const StartScreenWidget(),
       'main_screen':(context) => const MainScreenWidget(),
       'auth_list':(context) => const AuthList(),
       'register_list':(context) => const RegisterList(),
       'music_page':(context) => const MusicPage (),
       'music_menu_list':(context) => const MusicMenuList(),
       'media_screen':(context) => const MediaScreen(),
       'music_palyer':(context) => const MusicPlayer(),
       'radio_page':(context) => const RadioMainScreen(),
       'evropa_plus_kg':(context) => const EvropaPLusKg(),
       'kg_obondoru':(context) => const KgObondoru(),
       'retro_fm':(context) => const RetroFm(),
       'suyunchu_fm':(context) => const SuyunchuFm(),
       'hit_fm':(context) => const HitFm(),
       

      },
       initialRoute:  'start_screen',
    );
  }
}

