import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Address extends StatefulWidget {
  const Address({Key? key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Address",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 200,
          width: 450,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Shanthinagar, Bengaluru, Karnataka, India",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.location_on_outlined,
                  color: Colors.blue,
                  size: 24,
                ),
              ),
              ListTile(
                onTap: launchGmail,
                title: Text(
                  "buntmohith@gmail.com",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.mail_outline_rounded,
                  color: Colors.blue,
                  size: 24,
                ),
              ),
              ListTile(
                title: Text(
                  "+91 7259282655",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                leading: Icon(
                  Icons.phone_enabled_outlined,
                  color: Colors.blue,
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void launchGmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'buntmohith@gmail.com',
    );

    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch Gmail';
    }
  }
}