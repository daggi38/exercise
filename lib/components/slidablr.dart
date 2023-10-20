import 'package:flutter/material.dart';

class Slidable extends StatelessWidget {
  final Color avatarcolor;
  final Color textcolor;
  final Color newcolor;
  final String text;
  final Icon newicon;
  const Slidable({super.key, required this.newcolor, required this.text,required this.newicon,required this.textcolor,required this.avatarcolor});




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: newcolor, borderRadius: BorderRadius.circular(40)),
          height: 220,
          width: 180,
          child: Column(
            
            
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CircleAvatar(
                      child: newicon,
                      radius: 30,
                      backgroundColor: avatarcolor,
                    ),
                  ),
                ),
              ),
              
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(text,style: TextStyle(color: textcolor,fontSize: 20),),
                  )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
