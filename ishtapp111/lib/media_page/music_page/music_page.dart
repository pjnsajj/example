import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
final audioPlayer = AudioPlayer();


@override
void dispose(){
  audioPlayer.dispose();
  super.dispose();
audioPlayer.onPlayerStateChanged.listen((state) {
setState(() {
isPlaying = state == PlayerState.playing;
});
});


}
bool isPlaying = false;
Duration duration = Duration.zero;
Duration position = Duration.zero;


@override
void initState() {
super. initState();
 setAudio();

audioPlayer.onPlayerStateChanged.listen((state) {
setState(() {
isPlaying = state == PlayerState.playing;
});
});

audioPlayer.onDurationChanged.listen((newDuration) {
setState(() {
duration = newDuration;
 });
});

audioPlayer.onPositionChanged.listen((newPosition) {
  setState(() {
    position = newPosition;
  });
 });
}

Future setAudio () async {
audioPlayer.setReleaseMode(ReleaseMode.loop);

String url = 'https://audio.super.kg//media/audio/a_277949.mp3';
audioPlayer.setSourceUrl(url);
}



String formatTime (Duration duration){
String twoDigits (int n) => n.toString().padLeft (2, '0');
final hours = twoDigits (duration. inHours) ;
final minutes = twoDigits (duration. inMinutes. remainder (60));
final seconds = twoDigits (duration. inSeconds. remainder (60));
return [if (duration. inHours > 0) hours,
 minutes,
  seconds
]. join(':');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 16), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect (
            borderRadius: BorderRadius. circular(20),
            child: Image.network(
             'https://images.unsplash.com/photo-1683965789236-5e83c8adb5cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
             width: double.infinity,
              height: 350,
               fit: BoxFit.cover,
                ) ,
           ) ,
          const SizedBox (height: 32),
          const Text(' Жаша',
               style:TextStyle(
               fontSize: 24, 
               fontWeight:FontWeight.bold ,
               ),
            ) ,
            const SizedBox(height: 4) ,
         const  Text ( 'Гулжигит Сатыбеков',
       style: TextStyle(fontSize: 20),
         ), 
         Slider(
         min: 0, 
         max: duration.inSeconds. toDouble () ,
         value: position.inSeconds. toDouble (),
         onChanged:(value) async {
          final position = Duration (seconds: value. toInt ()) ;
         await audioPlayer. seek(position);
         await audioPlayer.resume() ;
         },
         ), 
         Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 16),
           child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Text(formatTime(position)),
            Text(formatTime(duration - position)),
          ],
         ),
            ) , 
            CircleAvatar(
        radius: 35,
         child: IconButton (
           icon: Icon (
           isPlaying ? Icons.pause : Icons.play_arrow,
           ),
           iconSize: 50,
            onPressed: () async {
              if (isPlaying) {
             await audioPlayer.pause () ; 
             } else {
             await audioPlayer.resume();
             }


            },
            ), 
            ) , 

      
        ],
      ),
      ),
    );

  }
}
