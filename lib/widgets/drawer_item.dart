import 'package:drawer_and_navbar/base/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class DrawerItem extends StatelessWidget{
  final String icon;
  final String title;

  const DrawerItem({super.key, required this.icon,required this.title, });

  @override
  Widget build(BuildContext context) {
     return Row(
       children: [
         SvgPicture.asset(icon),
         const SizedBox(
           width: 16,
           height: 38,
         ),
         Text(
           title,
           style: const TextStyle(
               fontFamily: "Regular",
               fontSize: 16,
               color: AppColors.textDrawerColor),
         ),
       ],
     );
  }
}
