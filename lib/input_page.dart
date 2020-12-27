import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(),
                  ),
                  Expanded(
                    child: MyContainer(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(),
            ),
            Expanded(
              child: MyContainer(),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 50,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'KADIN',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      renk: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  MyContainer({this.renk = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: renk),
    );
  }
}
