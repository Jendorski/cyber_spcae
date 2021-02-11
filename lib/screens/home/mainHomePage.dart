import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {

  static const routeName = '/main_home';

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: ListView(
                      children: [

                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                ],
              )
          ),
        ),
      )
    );

  }
}
