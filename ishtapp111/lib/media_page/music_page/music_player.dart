import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
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
      body:FutureBuilder(
    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) => Padding(padding: const EdgeInsets.symmetric(horizontal: 16), 
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
                Container(

                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: (){},
                     icon: Icon(Icons.favorite_border_outlined),
                     iconSize: 30,)),
       
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
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween, 
               children: [ DropdownButtonExample(),
           
                
                
              //   DropdownButton(items:[
              //       DropdownMenuItem(child: Column(children: [
              //   IconButton(
              //    onPressed: (){},
              //      icon: Icon(Icons.shuffle_sharp, color: Colors.blueGrey,),
              //       iconSize: 35,),
              //       IconButton(
              //       onPressed: (){},
              //     icon: Icon(Icons.repeat_sharp, color: Colors.blueGrey,),
              //        iconSize: 35,)
              //  ],)),
              //   ],
              //   icon: const Icon(Icons.shuffle_sharp, color: Colors.blueGrey,),
              //    value: _dropdownValue,
              //    onChanged: dropdownCallback,
              //    ),
               

                Container(

                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: (){},
                     icon: Icon(Icons.skip_previous_sharp),
                     iconSize: 50,)),
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
            Container(
                 
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    onPressed: (){},
                     icon: Icon(Icons.skip_next_sharp),
                     iconSize: 50,)),
                        Container(

                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: (){
              Navigator.of(context).pushNamed('music_menu_list');
            
                            },
                     icon: Icon(Icons.menu_outlined),
                     iconSize: 30,)),
            
               ],
            ),
            

      
        ],
      ),
      ),
  
    ),
) ;
  }
}

 List list = [ Icon(Icons.shuffle_sharp, color: Colors.blueGrey,),  Icon(Icons.repeat_sharp, color: Colors.blueGrey,), ];


class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  var dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      // icon: const Icon(Icons.shuffle_sharp, color: Colors.blueGrey,),
      elevation: 16,
     // style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
       // color: Colors.deepPurpleAccent,
      ),
      onChanged: ( value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem>(( value) {
        return DropdownMenuItem(
          value: value,
          child: value,
        );
      }).toList(),
    );
  }
}
