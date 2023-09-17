import 'package:flutter/material.dart';
class AppIcon extends StatelessWidget{
  final String icon;
  final String username;
  final String name;
  const AppIcon({super.key, required this.icon,required this.username,required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children:[
        Image.asset(icon),
        SizedBox(height: 15),
        Text(name, style: const TextStyle(
          fontFamily: 'Medium',
          fontSize: 20),),

        Text(username, style: const TextStyle(
          fontFamily: 'Regular',
          fontSize: 14
        ))
        ]
    );
  }
}
