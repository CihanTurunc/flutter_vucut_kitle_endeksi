import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_cinsiyet.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;

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
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      renk: seciliCinsiyet == 'KADIN'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: IconCinsiyet(
                        cinsiyet: 'KADIN',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      renk: seciliCinsiyet == 'ERKEK'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: IconCinsiyet(
                        cinsiyet: 'ERKEK',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
