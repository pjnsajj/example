import 'package:flutter/material.dart';
import 'package:ishtapp111/widgets/ishtapp_widgets.dart';

class RadioMainScreen extends StatefulWidget {
  const RadioMainScreen({super.key});

  @override
  State<RadioMainScreen> createState() => _RadioMainScreenState();
}

class _RadioMainScreenState extends State<RadioMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
                      title: const Text('ishtapp',
                      style: TextStyle(
      color: Colors.green,
      fontSize: 50,
       fontWeight: FontWeight.bold
       ),),
                    ),
      backgroundColor: Colors.white,
     body: ListView(
        padding: const EdgeInsets.only(top: 200),
        children: [
                            TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('evropa_plus_kg');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  ' ЕВРОПА ПЛЮС КЫРГЫЗСТАН',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
                                                         TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('kg_obondoru');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  ' Кыргызстан Обондору ',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
                                                                                      TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('retro_fm');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  'Ретро FM Кыргызстан',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
      TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('suyunchu_fm');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  'Сүйүнчү FM',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
                              TextButton(onPressed: ()
                              {
           Navigator.of(context).pushNamed('hit_fm');
            
                            },
                             child: Container(
                            decoration: GreenDecoration,
  height: 30,
              
  child: const Text(
  'Хит FM Кыргызстан',
    textAlign: TextAlign.center,
    style: WhiteTextStyle, 
  ),  

                             )
                             ),
                             

        ],
     )
      
    );  
  }
}