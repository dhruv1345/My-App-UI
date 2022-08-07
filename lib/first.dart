import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:slide_to_act/slide_to_act.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text(
            "Code Charm",
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
        ),
        body: Column(
          children: [
            Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_q77jpumk.json',
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Hey, User! Welcome to Code Charm!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SlideAction(
                elevation: 1,
                sliderButtonIcon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                innerColor: Colors.teal,
                outerColor: Colors.black26,
                text: 'Check Our services',
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                onSubmit: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
