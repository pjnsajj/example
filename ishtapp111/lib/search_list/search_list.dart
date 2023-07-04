import 'package:flutter/material.dart';

class SeachList extends StatelessWidget {
  const SeachList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.all(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          TextButton(onPressed: (){},
           child: Container(
          
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.green,
    boxShadow: const[
       BoxShadow(color: Colors.green, spreadRadius: 3),
    ],
  ),
  height: 25,
          
  child: const Text(
  'За день',
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 20),
  ),
),
),
       TextButton(onPressed: (){},
           child: Container(
          
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.green,
    boxShadow:const [
      BoxShadow(color: Colors.green, spreadRadius: 3),
    ],
  ),
  height: 25,
          
  child: const Text(
  'За неделю',
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 20),
  ),
),
),
  TextButton(onPressed: (){},
           child: Container(
          
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.green,
    boxShadow: const[
      BoxShadow(color: Colors.green, spreadRadius: 3),
    ],
  ),
  height: 25,
          
  child: const Text(
  'За месяц',
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontSize: 20),
  ),
),
),
                 
         ],
        ),              
      ],
    );
       
  }
}