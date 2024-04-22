import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer _timer;
  double _offset = 0.0;
  final double _scrollSpeed = 0.5;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      setState(() {
        _offset -= _scrollSpeed;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Animated Horizontal Scrolling Background'),
      // ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              height: 3000,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                    left: _offset,
                    child: AnimatedContainer(
                      color: Colors.black,
                      duration: const Duration(milliseconds: 100),
                      width: MediaQuery.of(context).size.width * 2,
                      height: 3000,
                      child: _buildBackgroundContent(),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -1,
              top: -35,
              child: Container(
                width: 300,
                height: 260,
                child: Image.asset(
                  "Assets/111.gif",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              left: _isVisible ? 40 : -300,
              top: 150,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: _isVisible ? 1500 : 100,
                child: const Row(
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultTextStyle(style: fontSize: 32, color: Colors.white54, child: AnimatedTextKit(child: Text(
                          "Hello, I'm",
                          style: TextStyle(fontSize: 32, color: Colors.white54),
                        ), ,)),
                        Text(
                          "Hello, I'm",
                          style: TextStyle(fontSize: 32, color: Colors.white54),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Mohith B M",
                          style: TextStyle(
                              fontSize: 36,
                              color: Color.fromARGB(255, 77, 193, 255)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(fontSize: 36, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Building Apps  |",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white60),
                            ),
                            Text(
                              "   Mohith, Flutter Dev",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white60),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 450,
                    ),
                    Container(
                      height: 400,
                      width: 400,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 200,
                          ),
                          Center(
                              child: CircleAvatar(
                            radius: 180,
                            backgroundImage: AssetImage("Assets/2.jpg"),
                          )),
                          Positioned(
                            bottom: 1,
                            child: Container(
                                height: 100,
                                width: 100,
                                decoration: FlutterLogoDecoration()),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundContent() {
    return Row(
      children: List.generate(
        450,
        (index) => Row(
          children: [
            Container(
              width: 150,
              height: 3000,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              color: Colors.black,
              child: const VerticalDivider(
                color: Color.fromARGB(136, 90, 88, 88),
              ),
            )
          ],
        ),
      ),
    );
  }
}
