import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SuyunchuFm extends StatefulWidget {
  const SuyunchuFm({super.key});

  @override
  State<SuyunchuFm> createState() => _SuyunchuFmState();
}

class _SuyunchuFmState extends State<SuyunchuFm> {final audioPlayer = AudioPlayer();


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
}

Future setAudio () async {
audioPlayer.setReleaseMode(ReleaseMode.loop);

String url = 'https://cdn.radioplayer.kg:8443//suiunchu64';
audioPlayer.setSourceUrl(url);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 16), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect (
            child: Image.network(
             'https://suiunchu.kg/wp-content/uploads/2019/09/sfm-png.png',
             width: double.infinity,
              height: 400,
               fit: BoxFit.cover,
                ) ,
           ) ,
          const SizedBox (height: 32),
          const Text(' Сүйүнчү FM ',
               style:TextStyle(
               fontSize: 24, 
               fontWeight:FontWeight.bold ,
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
