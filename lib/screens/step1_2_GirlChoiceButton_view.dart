import 'package:flutter/material.dart';
import 'package:kim_app/Tools/SlideLeftRoute.dart';
import 'package:kim_app/Tools/widgetfunction.dart';
import 'package:kim_app/screens/homescreen.dart';
import 'package:kim_app/screens/step2_video_view.dart';

import '../Tools/SlideRightRoute.dart';
import '../Tools/constants.dart';

class Step1_girlchoicebutton_view extends StatelessWidget {
  const Step1_girlchoicebutton_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final double padding = 10;
    final sidepadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_ORANGE,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context, SlideLeftRoute(widget: Homescreen()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 8, top: 8),
                color: COLOR_ORANGE,
                child: Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                "*步驟1 選擇區間",
                style: themeData.textTheme.titleLarge,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10),
              width: 350,
              height: 500,
              decoration: BoxDecoration(
                border: Border.all(color: COLOR_BLACK, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),

              //這邊留給你塞按鈕
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, SlideRightRoute(widget: Step2_video_view()));
              },
              child: Container(
                  height: 75,
                  width: 300,
                  margin: EdgeInsets.only(left: 45, top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48.0),
                      color: COLOR_GRAY,
                      boxShadow: [
                        BoxShadow(
                          color: COLOR_CLEAR_GRAY,
                          offset: Offset(0, 10),
                          blurRadius: 5,
                        ),
                      ]),
                  child: Icon(
                    Icons.arrow_circle_right,
                    size: 75,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
