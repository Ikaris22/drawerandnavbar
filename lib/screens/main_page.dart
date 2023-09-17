
import 'package:drawer_and_navbar/screens/account/account_page.dart';
import 'package:drawer_and_navbar/screens/cart/cart_page.dart';
import 'package:drawer_and_navbar/screens/explore/explore_page.dart';
import 'package:drawer_and_navbar/screens/favourite/fav_page.dart';
import 'package:drawer_and_navbar/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../base/app_colors.dart';
import '../widgets/app_icon.dart';
import '../widgets/drawer_item.dart';
import '../widgets/drawer_view.dart';
import 'drawer/about.dart';
import 'drawer/contactus.dart';
import 'drawer/faq.dart';
import 'drawer/myaddres.dart';
import 'drawer/myorders.dart';
import 'drawer/mysub.dart';
class MainPage extends StatefulWidget{
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() =>_MainPageState();


}
class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffordKey = GlobalKey<ScaffoldState>();
    int selectedPage = 0;
    bool isDrawer = false;
   List<Widget> widgetOption=[
      const HomePage(),
     const ExplorePage(),
     const CartPage(),
     const FavPage(),
     const AccountPage()
   ];
    const List <Widget> drawerOption = [
      MyOrdersPage(),
      MySubcriptionsPage(),
      AddressPage(),
      FAQPage(),
      ContactUsPage(),
      AboutPage(),

    ];
    Widget buildIcon() {
      return Positioned(
          child: InkWell(
              onTap: ()=> scaffordKey.currentState?.openDrawer(),
              child: Image.asset('assets/icon_drawer/icon_drawer.png')));
    }
   return  Scaffold(
       appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.transparent,
         iconTheme: const IconThemeData(
           color: Colors.black,
               size: 45,
         ),
       ),
     key: scaffordKey,
     drawer: DrawerView(
       icon: const AppIcon(
         icon: 'assets/icon_drawer/icon_avatar.png',
         name: 'George D.',
         username: '@george31',
       ),
           backgroundItem: AppColors.backgroundDrawer,
         onClickItem: (index){
           setState(() {
             isDrawer = true;
             selectedPage = index;
           });
         } ,
       item:const [
         DrawerItem(
           icon:'assets/icon_drawer/myorders.svg',
           title:'My orders',
         ),
         DrawerItem(
           icon:'assets/icon_drawer/mysub.svg',
           title:'My Subcriptions',
         ),
         DrawerItem(
           icon:'assets/icon_drawer/myaddr.svg',
           title:'My Addresses',
         ),
         DrawerItem(
           icon:'assets/icon_drawer/fav.svg',
           title:'FAQ',
         ),
         DrawerItem(
           icon:'assets/icon_drawer/contactus.svg',
           title:'Contact us',
         ),
         DrawerItem(
           icon:'assets/icon_drawer/about.svg',
           title:'About',
         ),
       ]
     ),
       body:  Center(
           child: isDrawer? drawerOption[selectedPage] : widgetOption[selectedPage]),
     bottomNavigationBar: SizedBox(
       height: 75,
       child: BottomNavigationBar(
         backgroundColor: AppColors.navBarColor ,
         onTap: (index){
           setState(() {
             selectedPage = index;
           });
         },
         showSelectedLabels: false,
         selectedItemColor: Colors.white,
         unselectedItemColor: Colors.grey,
         items: [
           navBar('assets/icon_navbar/icon_home.png', 'Home'),
           navBar('assets/icon_navbar/icon_explore.png', 'Explore'),
           navBar('assets/icon_navbar/icon_cart.png', 'Cart'),
           navBar('assets/icon_navbar/icon_fav.png', 'Favourite'),
           navBar('assets/icon_navbar/icon_accout.png','Acount')
         ],
       ),
     )
   );
  }
  
}
navBar(String images, String label) {
  return
    BottomNavigationBarItem(
      icon: Image.asset(images),
      label: label,
      backgroundColor: AppColors.navBarColor,
    );
}