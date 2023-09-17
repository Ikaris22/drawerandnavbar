import 'package:drawer_and_navbar/base/app_colors.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});
  @override
  State<StatefulWidget> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor:AppColors.navBarColor ,
        ),
        body: const Center(
            child: Text(
              'Address Page',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )));
  }
}