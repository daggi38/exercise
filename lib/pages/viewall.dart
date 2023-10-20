import 'package:flutter/material.dart';
import 'package:pj3/components/models/lists.dart';

class viewall extends StatelessWidget {
  const viewall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      body: SingleChildScrollView(
        child: Column(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: slides.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width:400 ,
                        child: slides[index],
                      ),
                    ),
                  ),)
      
        ],),
      ),
    );
  }
}