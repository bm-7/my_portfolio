import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Address",
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white70),
      ),
      const SizedBox(
        height: 30,
      ),
      Container(
        height: 200,
        width: 450,
        child: const Column(
          children: [
            ListTile(
              title: Text(
                "Shanthinagar, Bengaluru, Karnataka, India",
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.blue,
                size: 24,
              ),
            ),
            ListTile(
              title: Text(
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                "buntmohith@gmail.com",
              ),
              leading: Icon(
                Icons.mail_outline_rounded,
                color: Colors.blue,
                size: 24,
              ),
            ),
            ListTile(
              title: Text(
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                "+91 7259282655",
              ),
              leading: Icon(
                Icons.phone_enabled_outlined,
                color: Colors.blue,
                size: 24,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
