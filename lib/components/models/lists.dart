 import 'package:flutter/material.dart';
import 'package:pj3/components/slidablr.dart';
import 'package:iconsax/iconsax.dart';

List<Widget> slides = [
    Slidable(
        avatarcolor: Color.fromARGB(255, 81, 81, 82),
        textcolor: Colors.white,
        newicon: Icon(Icons.handshake),
        newcolor: Color.fromARGB(255, 21, 0, 37),
        text: "Unlock the\npower of\nwellbeing"),
    Slidable(
        avatarcolor: Color.fromARGB(255, 161, 200, 231),
        textcolor: Colors.black,
        newicon: Icon(Iconsax.message),
        newcolor: Color.fromARGB(255, 198, 232, 236),
        text: "Is this app\nfor you?"),
    Slidable(
        avatarcolor: Color.fromARGB(255, 161, 200, 231),
        textcolor: Colors.black,
        newicon: Icon(Iconsax.message),
        newcolor: Color.fromARGB(255, 190, 139, 139),
        text: "Is this app\nfor you?"),
  ];