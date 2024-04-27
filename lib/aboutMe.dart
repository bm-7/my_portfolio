import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.green,
      child: Column(
        children: [
          Text("About :"),
          Container(
            height: 700,
            child: Row(
              children: [
                Text(
                  "Crafting excellence in flutter dvelopment",
                  style:  TextStyle(
                    fontSize: 37,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
