import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/constants.dart';

import 'icon_cinsiyet.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara = 15.0;
  double yapilanSpor = 3.0;
  int boy = 170;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'BOY',
                                style: kMetinStili,
                              ),
                            ),
                            SizedBox(width: 15),
                            RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                boy.toString(),
                                style: kSayiStili,
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ButtonTheme(
                                  minWidth: 36,
                                  child: OutlineButton(
                                    borderSide: BorderSide(color: Colors.lightBlue),
                                    onPressed: () {
                                      print('üstteki buton basıldı');
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      size: 10,
                                    ),
                                  ),
                                ),
                                ButtonTheme(
                                  minWidth: 36,
                                  child: OutlineButton(
                                    borderSide: BorderSide(color: Colors.lightBlue),
                                    onPressed: () {
                                      print('alttaki buton basıldı');
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Haftada Kaç Gün Spor Yapıyorsunuz?',
                      style: kMetinStili,
                    ),
                    Text(
                      yapilanSpor.round().toString(),
                      style: kSayiStili,
                    ),
                    Slider(
                        min: 0,
                        max: 7,
                        divisions: 7,
                        value: yapilanSpor,
                        onChanged: (double newValue) {
                          setState(() {
                            yapilanSpor = newValue;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Günde Kaç Sİgara İçiyorsunuz?',
                      style: kMetinStili,
                    ),
                    Text(
                      icilenSigara.round().toString(),
                      style: kSayiStili,
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        value: icilenSigara,
                        onChanged: (double newValue) {
                          setState(() {
                            icilenSigara = newValue;
                          });
                        })
                  ],
                ),
              ),
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
