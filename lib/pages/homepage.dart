import 'package:flutter/material.dart';
import 'package:pj3/components/bottomnav.dart';
import 'package:pj3/components/card.dart';
import 'package:pj3/components/models/lists.dart';
import 'package:pj3/components/slidablr.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatelessWidget {
 

  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[200],
                  child: Image.asset("lib/images/avatar.png")),
              Text(
                "Insights",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blueGrey),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 30,
                child: Icon(Icons.menu),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 15,
           offset: Offset(
            5.0,
            5.0,
          ),
        ),
        BoxShadow(
          color: Colors.white,
          blurRadius: 15,
        offset:Offset(-5, -5)
        
        ),
          ],),
          child: Bottomnavv()),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Homecard(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gentler Streak",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {
                        print(MediaQuery.of(context).size.height);
                        Navigator.pushNamed(context, "/viewall");
                      },
                      child: Text("View All",
                          style: TextStyle(color: Colors.blueGrey)))
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
              child: Container(
                
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: slides.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      child: slides[index],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Let's get personal",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Gentler community sharing fitness stories to\nsupport each other in creating healthier habits",
                    style: TextStyle(color: Colors.blueGrey),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
