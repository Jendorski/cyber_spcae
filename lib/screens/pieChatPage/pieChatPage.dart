import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieChatPage extends StatefulWidget {

  static const routeName = '/pie_chat';

  @override
  _PieChatPageState createState() => _PieChatPageState();
}

class _PieChatPageState extends State<PieChatPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
    ));
  }

}

