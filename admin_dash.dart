import 'package:flutter/material.dart';
import 'package:flutter_mysql_crud/approveddetails.dart';
import 'package:flutter_mysql_crud/dash.dart';
import 'package:flutter_mysql_crud/denieddetails.dart';
import 'package:flutter_mysql_crud/main.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Constants.dart';
import 'pendingdetails.dart';

class adminDash extends StatefulWidget {
  // const DashBoard{ Key? key }) : super(key: key);
  @override
  final title = 'Grid List';
  State<adminDash> createState() => _adminDashState();
}

class _adminDashState extends State<adminDash> {
  //List _postList =new List();
  Future<List> fetchPost() async {
    final responce =
        await http.get("http://20.15.11.61/API_FOlder/requeststatuscount.php");
    return jsonDecode(responce.body);
  }

  get child => null;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //  IconData? icon;
    return Scaffold(
      appBar: AppBar(
        title: Text("DAAPP"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(140, 158, 255, 1.0),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: Text(
                'DAAPP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => adminDash()));
              },
              leading: Icon(Icons.analytics),
              title: Text('DashBoard'),
            ),
            /* ListTile(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => load()));
              },
              leading: Icon(Icons.pending_actions_outlined),
              title: Text('Request form'),
            ), */
          ],
        ),
      ),
      body:

          /*  FutureBuilder<List>(
        future: getData(),
        builder: (ctx, ss) {
          if (ss.hasError) {
            print("error");
          }
          if (ss.hasData) {
            return Items(list: ss.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ), */

          Container(
        decoration: new BoxDecoration(color: Colors.transparent),
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PendingDetails()));
              },
              color: Colors.grey,
              textColor: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.people_outline,
                          size: 50.0, color: Colors.black),
                    ),
                    Center(
                        child: Text("Request",
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.black))),
                  ]),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ApprovedDetails()));
              },
              color: Colors.grey,
              textColor: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.approval_sharp,
                          size: 50.0, color: Colors.black),
                    ),
                    Center(
                        child: Text("Approved",
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.black))),
                  ]),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => PendingDetails()));
              },
              color: Colors.grey,
              textColor: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.pending_actions_outlined,
                          size: 50.0, color: Colors.black),
                    ),
                    Center(
                        child: Text("Pending",
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.black))),
                  ]),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => DeniedDetails()));
              },
              color: Colors.grey,
              textColor: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.cancel_presentation_rounded,
                          size: 50.0, color: Colors.black),
                    ),
                    Center(
                        child: Text("Denied",
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.black))),
                  ]),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Home()));
              },
              color: Colors.grey,
              textColor: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.call_received,
                          size: 50.0, color: Colors.black),
                    ),
                    Center(
                        child: Text("Reviesd",
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.black))),
                  ]),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => adminDash()));
              },
              color: Colors.grey,
              textColor: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.share, size: 50.0, color: Colors.black),
                    ),
                    Center(
                        child: Text("Forward",
                            style: new TextStyle(
                                fontSize: 18.0, color: Colors.black))),
                  ]),
            ),
          ],
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Profile) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => adminDash()));
    } else if (choice == Constants.Logout) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => adminDash()));
    }
  }
}
