import 'dart:math';

import 'package:dice_app/utill.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int total = 0, i = 0, j = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child:
                  Image.asset("assets/image/Background.png", fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, top: 150),
              child: Text(
                "Total Amount:  $total",
                style: TextStyle(
                  color: Color(0xff1C4E7C),
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 280),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("${img1[i]}", fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 190, top: 280),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset("${img2[j]}", fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: () {
                int index1 = Random().nextInt(img1.length);
                int index2 = Random().nextInt(img2.length);

                setState(() {
                  i = index1;
                  j = index2;
                  index1++;
                  index2++;
                  total = index1 + index2;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(left: 45, top: 580),
                child: Container(
                  height: 120,
                  width: 1000,
                  child: Stack(
                    children: [
                      Image.asset("assets/image/Button.png", fit: BoxFit.cover),
                      Padding(
                        padding: EdgeInsets.only(left: 57, top: 22),
                        child: Text(
                          "Roll Dice",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
