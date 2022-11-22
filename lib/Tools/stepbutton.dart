import 'package:flutter/material.dart';
import '../Tools/constants.dart';

class Stepbutton extends StatelessWidget {
  const Stepbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(), elevation: 20, backgroundColor: COLOR_GRAY),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Let's Begin",
              style: themeData.textTheme.headline2,
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
