import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About Me :",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Crafting excellence in Flutter development",
                    style: TextStyle(
                      fontSize: 26,
                      color: Color.fromARGB(255, 77, 193, 255),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    "I'm Mohith B M, a mobile app developer, particularly in Flutter. I'm always looking to learn and improve. More than just coding, I believe in never giving up, a trait that fuels my passion for building innovative and user-friendly mobile experiences.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20),
            FadeInAnimation(
                duration: Duration(milliseconds: 3000),
                curve: Curves.linear,
                child: Container(
                  width: 700,
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Container(
                            width: 300,
                            height: 400,
                            color: Colors.amber,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage("Assets/3.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 50,
                        child: Container(
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.developer_mode_outlined,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Application Developer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 30,
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.developer_mode_outlined,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Mohith B M",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
