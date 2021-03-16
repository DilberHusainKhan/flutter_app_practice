import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Button UI",
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("This is Button UI and you will have to learn all Ui Widgets, This is Button UI and you will have to learn all Ui Widget",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: "Times New Roman",
//            background: Paint()..color= Colors.red..style = PaintingStyle.stroke
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              decorationColor: Colors.red[500],
              ),
//              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),


          FlatButton(onPressed: (){},
              child: Text("Flat Button", style: TextStyle(
                fontSize: 20.0)),
            textColor: Colors.black,
            splashColor: Colors.white,
            highlightColor: Colors.red,
            color: Colors.amber,
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          ),


          RaisedButton(onPressed: (){},
              child: Text("Raised Button"),
            textColor: Colors.white,
            color: Colors.black,
            splashColor: Colors.cyan,
            highlightColor: Colors.green[500],
            elevation: 20.0,
            highlightElevation: 30.0,
            padding: EdgeInsets.all(15.0),
//            shape: Border.all(width: 2.0,color: Colors.yellowAccent,),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0))
          ),



          MaterialButton(onPressed: (){},
              child: Text("Material Button"),
            padding: EdgeInsets.all(10.0),
            elevation: 5.0,
            highlightElevation: 10.0,
            color: Colors.yellow,
            shape: Border.all( color:Colors.black, width: 2.0),
            highlightColor: Colors.white,
            hoverColor:Colors.red,
          ),


          IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_a_photo),
              color: Colors.amber,
              iconSize: 50.0,
              splashColor: Colors.black,
              tooltip: "Add a Photo",
              focusColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.amber,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/back.svg"),
      onPressed: () {},
    ),
    title: Text("Webtyx",style: TextStyle(fontSize: 20.0,fontFamily: "Time New Roman",),),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/search.svg",
          // By default our  icon color is white
          color: Colors.black,
        ),

        splashColor: Colors.amber,
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/cart.svg",
          color: Colors.black,
          // By default our  icon color is white
        ),
        splashColor: Colors.amber,
        onPressed: () {},
      ),
    ],
  );
}
