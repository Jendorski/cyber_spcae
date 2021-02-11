import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {

  static const routeName = '/settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Row(
            children: [
              Container(
                child:
                Text("Settings"),
              ),
              SizedBox(
                height: 1000.0,
                child: Expanded(
                  child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 4,
                      ),
                      itemBuilder: (ctx, i) => Card(
                        elevation: 12.0,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff111010),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Profile Information",
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            )),
                      )),
                ),
              )
            ],
          ),
        ),
    );
  }

}

