import 'package:flutter/material.dart';

import '../theme.dart';
class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  const CustomBottomNavBar({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon:Icon(Apptheme.iconDataHome),label: Apptheme.home,),
      BottomNavigationBarItem(icon:Icon(Apptheme.iconDataSearch), label: Apptheme.search),
      BottomNavigationBarItem(icon:Icon(Apptheme.iconDataCart), label: Apptheme.cart),
      BottomNavigationBarItem(icon:Icon(Apptheme.iconDataAccount), label: Apptheme.account),
    ],currentIndex:selectedIndex,
      onTap: onItemTapped,
      unselectedItemColor: Apptheme.colorGrey700,
      unselectedLabelStyle: TextStyle(color: Apptheme.colorGrey700),
      selectedItemColor:Apptheme.colorBlack ,
    );
  }
}
