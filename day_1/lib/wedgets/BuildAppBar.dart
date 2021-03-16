import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.amber,
    leading: IconButton(
      onPressed: ()=> Navigator.pop,
      icon: SvgPicture.asset('assets/icons/back.svg'),
      color: Colors.black,
    ),
    title: Text("Day 1 App",
      style: TextStyle(
      color: Colors.black87,
    ),),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/search.svg'),
        onPressed: (){},
        tooltip: 'Search',
        color: Colors.black,
      ),
    ],
  );
}
