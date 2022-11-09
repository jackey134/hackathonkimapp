import 'package:flutter/material.dart';
import 'package:kim_app/Tools/SlideLeftRoute.dart';
import 'package:kim_app/Tools/widgetfunction.dart';
import 'package:kim_app/screens/homescreen.dart';
import 'package:kim_app/screens/step1_2_GirlChoiceButton_view.dart';
import 'package:kim_app/screens/step1_2_MenChoiceButton_view.dart';

import '../Tools/SlideRightRoute.dart';
import '../Tools/constants.dart';

class Step1_choicegender_view extends StatelessWidget {
  const Step1_choicegender_view({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Text(
                "*請先選擇性別",
                style: themeData.textTheme.titleMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 80),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            SlideRightRoute(
                                widget: Step1_menchoicebutton_view()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 8),
                        width: 170,
                        height: 200,
                        child: Image.asset('assets/images/man.png'),
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(top: 80),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            SlideRightRoute(
                                widget: Step1_girlchoicebutton_view()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 8),
                        width: 170,
                        height: 200,
                        child: Image.asset('assets/images/girl.png'),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "男性",
                    style: themeData.textTheme.titleMedium,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    "女性",
                    style: themeData.textTheme.titleMedium,
                  ),
                )
              ],
            ),
            //const Padding(padding: EdgeInsets.only(top: 120)),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(context,
            //         SlideRightRoute(widget: Step1_choicebutton_view()));
            //   },
            //   child: Container(
            //       height: 75,
            //       width: 300,
            //       margin: EdgeInsets.only(left: 45, top: 20),
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(48.0),
            //           color: COLOR_GRAY,
            //           boxShadow: const [
            //             BoxShadow(
            //               color: COLOR_CLEAR_GRAY,
            //               offset: Offset(0, 10),
            //               blurRadius: 5,
            //             ),
            //           ]),
            //       child: const Icon(
            //         Icons.arrow_circle_right,
            //         size: 75,
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}
