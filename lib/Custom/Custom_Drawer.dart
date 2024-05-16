import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<bool> _isHovering = List.generate(6, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      elevation: 2,

      surfaceTintColor: Colors.blue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,

              visualDensity: VisualDensity.standard,
              title: Text(
                'Languages',
                style: TextStyle(color: Colors.white),
              ),
              childrenPadding: EdgeInsets.all(15),
              collapsedIconColor: Colors.blue,
              children: [
                Text(
                  'English',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Kannada',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Hindi',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Tulu',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Tamil',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Malayalam',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            ExpansionTile(
              visualDensity: VisualDensity.standard,
              title: const Text(
                'Certificate',
                style: TextStyle(color: Colors.white),
              ),
              childrenPadding: const EdgeInsets.all(15),
              collapsedIconColor: Colors.blue,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCertificateItem(
                  'Flutter & Dart -The Complete Guide [2024 Edition]',
                  'https://www.udemy.com/certificate/UC-866981d1-1cf9-4978-9b90-2a8359aac506/',
                  0,
                ),
                const SizedBox(
                  height: 10,
                ),
                buildCertificateItem(
                  'Flutter Certifiction Course',
                  'https://drive.google.com/file/d/1-c6IVrnGEPEeGzi8hwmswSW_p2-VFOGK/view?usp=drivesdk',
                  1,
                ),
                const SizedBox(
                  height: 10,
                ),
                buildCertificateItem(
                  'Firebase Certifiction Course',
                  'https://drive.google.com/file/d/1-WLGgm9NoRU-kER6cMwJVTgpZ4C4Ui4H/view?usp=drivesdk',
                  2,
                ),
                const SizedBox(
                  height: 10,
                ),
                buildCertificateItem(
                  'GitHub Certifiction Course',
                  'https://drive.google.com/file/d/1-qhHQxut_URShvbNF92tHh1NEqzH7RQ6/view?usp=drivesdk',
                  3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCertificateItem(String title, String url, int index) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _changeHoverColor(index, true),
      onExit: (_) => _changeHoverColor(index, false),
      child: GestureDetector(
        onTap: () => _launchUrl(url),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: _isHovering[index] ? Colors.blue : Colors.white,
          ),
          child: Text(
            title,
          ),
        ),
      ),
    );
  }

  void _changeHoverColor(int index, bool isHovering) {
    setState(() {
      _isHovering[index] = isHovering;
    });
  }

  Future<void> _launchUrl(String url) async {
    if (!await canLaunch(url)) {
      throw 'Could not launch $url';
    }
    await launch(url);
  }
}
