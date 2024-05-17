import 'package:flutter/cupertino.dart';

/// A widget that adapts its child based on the screen size.
class Responsive extends StatelessWidget {
  /// Constructs a Responsive widget.
  const Responsive({
    Key? key,
    required this.laptopScreen,
    required this.mobileScreen,
  }) : super(key: key);

  /// Widget to display on laptop/desktop screens.
  final Widget laptopScreen;

  /// Widget to display on mobile screens.
  final Widget mobileScreen;

  /// Checks if the screen size is considered large (for laptops/desktops).
  static bool isLaptopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1000;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isLaptopScreen(context)) {
          return laptopScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}
