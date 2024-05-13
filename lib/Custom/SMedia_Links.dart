import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}
Future<void> _launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              _launchUrl('https://www.linkedin.com/in/bm72');
            },
            child: const Text("LinkedIn",style: TextStyle(color: Colors.white70),),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              _launchUrl('https://github.com/bm-7');
            },
            child: const Text("GitHub",style: TextStyle(color: Colors.white70),),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              _launchUrl('https://twitter.com/MohithBunt');
            },
            child: const Text("Twitter",style: TextStyle(color: Colors.white70),),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              _launchUrl('https://www.instagram.com/_mohith_bunt_?igsh=Mm0zZ2R5amQwZTJu');
            },
            child: const Text("Instagram",style: TextStyle(color: Colors.white70),),
          ),
        ],
      ),
    );
  }
}