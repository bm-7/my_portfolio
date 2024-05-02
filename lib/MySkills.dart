import 'package:flutter/material.dart';

class MySkills extends StatefulWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 1200,
      color: Colors.black,
      child: Row(
        children: [
          Container(
            width: 500,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text(
                  "My Skills",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "Let's Explore My Popular Skills",
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Text(
                    "My experience about building impactful websites and apps with expertise in frontend frameworks and backend languages",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
