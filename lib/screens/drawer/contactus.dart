import 'package:drawer_and_navbar/base/app_colors.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});
  @override
  State<StatefulWidget> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
              'ContactUs Page',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )));
  }
}