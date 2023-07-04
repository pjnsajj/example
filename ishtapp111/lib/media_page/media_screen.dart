import 'package:flutter/material.dart';
//import 'package:ishtapp111/media_page/music_page/music_page.dart';
// import 'package:ishtapp111/media_page/music_page/music_player.dart';
// import 'package:ishtapp111/media_page/radio_page/radio_main_screen.dart';
import 'package:ishtapp111/widgets/ishtapp_widgets.dart';
//import 'package:ishtapp111/media_page/music_page/music_page.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.only(top: 200),
        children: [
                            TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('music_palyer');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  ' Музыка ',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
                                                         TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('radio_page');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  ' Радио ',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
                             

        ],
      );  
  }
}