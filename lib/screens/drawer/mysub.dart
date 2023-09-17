import 'package:drawer_and_navbar/base/app_colors.dart';
import 'package:flutter/material.dart';

class MySubcriptionsPage extends StatefulWidget {
  const MySubcriptionsPage({super.key});
  @override
  State<StatefulWidget> createState() => _MySubcriptionsPageState();
}

class _MySubcriptionsPageState extends State<MySubcriptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: AppColors.navBarColor,
        ),
        body: const Center(
            child: Text(
              'MySubcriptions Page',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )));
  }
}