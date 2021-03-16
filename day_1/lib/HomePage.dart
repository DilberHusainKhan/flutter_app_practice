import 'package:day1/wedgets/BuildAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dataToChange = 0;
  String inputdata;
  String displaydata = ' ';
  var name = 'Dilber';

  void showData() {
    setState(() {
      displaydata = inputdata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$displaydata',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                Text("$dataToChange , $name",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          name = 'Humayun';
                          dataToChange++;
                        });
                      },
                      child: Text(" + 1 ", style: TextStyle(
                        fontSize: 24.0,
                      ),),
                    ),
                    SizedBox(width: 10.0,),

                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          dataToChange--;
                        });
                      },
                      child: Text(" - 1 ", style: TextStyle(
                        fontSize: 24.0,
                      ),),
                    ),
                    SizedBox(width: 10.0,),

                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          name = 'Dilber';
                          dataToChange = 0;
                        });
                      },
                      child: Text("Reset", style: TextStyle(
                        fontSize: 24.0,
                      ),),
                    ),
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    onChanged: (text) {
                      inputdata = text;
                    },
                    autocorrect: true,
                    maxLength: 20,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.people),
//                  hintText: 'Name',
                      labelText: 'UserName',
                      helperText: 'Enter Your Name',
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Name',

                    ),
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: showData,
                      child: Text('Click me'),
                    ),
                    SizedBox(width: 10.0,),
                    RaisedButton(
                      onPressed: () {
                        inputdata = ' ';
                        showData();
                      },
                      child: Text('Reset'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.grey[200],
//      appBar: buildAppBar(),
//      body:
//    );

