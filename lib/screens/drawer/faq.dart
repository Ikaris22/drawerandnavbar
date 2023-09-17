import 'package:drawer_and_navbar/base/app_colors.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});
  @override
  State<StatefulWidget> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
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
              'FAQ Page',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )));
  }
}