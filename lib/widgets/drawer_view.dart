import 'package:drawer_and_navbar/base/app_colors.dart';
import 'package:flutter/material.dart';
class DrawerView extends StatelessWidget {
  final Widget icon;

  final Color backgroundItem;
  final List<Widget> item;
  final Function (int index) onClickItem;
  const DrawerView({super.key, required this.icon, required this.backgroundItem, required this.item,required this.onClickItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [icon],
                ),
              )
              ),
          Expanded(
              flex:6,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundDrawer,
                  borderRadius: BorderRadius.circular(26)
                ),
                margin: const EdgeInsets.only(bottom: 72, left: 20 ,right: 16,top:20),
                child:Column(
                  children: item.asMap().map((index, widget) =>
                      MapEntry(index, InkWell(
                        onTap: () => onClickItem(index),
                        child: widget,
                      ))).values.toList(),
                ),
              ))
        ],
      ),
    );
  }
}