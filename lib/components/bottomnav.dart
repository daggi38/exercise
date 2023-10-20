import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class Bottomnavv extends StatefulWidget {
  const Bottomnavv({super.key});

  @override
  State<Bottomnavv> createState() => _BottomnavvState();
}

class _BottomnavvState extends State<Bottomnavv> {
  int selectedindex = 0;

  void onitemtapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: BottomNavigationBar(
              elevation: 1,
              selectedItemColor: Color.fromARGB(255, 0, 0, 0),
              currentIndex: selectedindex,
              onTap: onitemtapped,
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Iconsax.home1), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.fastfood_outlined,
                    ),
                    label: "Food"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.show_chart_outlined), label: "chart"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Iconsax.category,
                    ),
                    label: "Category"),
              ]),
        
      ),
    );
  }
}
