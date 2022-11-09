import 'package:flutter/material.dart';
import '../Tools/constants.dart';

class boxdecoration extends StatelessWidget {
  const boxdecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      height: 95,
      width: 300,
      decoration: new BoxDecoration(
          color: COLOR_GRAY, // 底色
          borderRadius:
          BorderRadius.circular((60.0)),// 圆角度
          boxShadow: [
            BoxShadow(
              color: COLOR_CLEAR_GRAY,
              offset: Offset(0,10),
              blurRadius: 5,
            ),
          ]
      ),
    );
  }
}
