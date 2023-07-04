import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class KgObondoru extends StatefulWidget {
  const KgObondoru({super.key});

  @override
  State<KgObondoru> createState() => _KgObondoruState();
}

class _KgObondoruState extends State<KgObondoru> {final audioPlayer = AudioPlayer();


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

String url = 'https://cdn.radioplayer.kg:8443/obondoru64';
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
            borderRadius: BorderRadius. circular(20),
            child: Image.network(
             'https://obondoru.kg/wp-content/uploads/2022/06/logo_png2-170x170.png',
             width: double.infinity,
              height: 350,
               fit: BoxFit.cover,
                ) ,
           ) ,
          const SizedBox (height: 32),
          const Text('Кыргызстан Обондору',
               style:TextStyle(
               fontSize: 24, 
               fontWeight:FontWeight.bold ,
               ),
            ) ,
            const SizedBox (height: 32),
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
