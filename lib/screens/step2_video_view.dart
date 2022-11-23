import 'dart:io';
import 'package:kim_app/Tools/folders/create_folder.dart';

import '../Tools/SlideRightRoute.dart';
import '../Tools/constants.dart';
import 'package:flutter/material.dart';
import 'package:kim_app/Tools/SlideLeftRoute.dart';
import 'package:kim_app/Tools/widgetfunction.dart';
import 'package:kim_app/Tools/camera_tools/camera_screen.dart';
import 'package:kim_app/screens/step1_2_GirlChoiceButton_view.dart';

class Step2_video_view extends StatefulWidget {
  const Step2_video_view({Key? key}) : super(key: key);

  @override
  State<Step2_video_view> createState() => _Step2_video_viewState();
}

class _Step2_video_viewState extends State<Step2_video_view> {
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
                Navigator.pop(context,
                    SlideLeftRoute(widget: Step1_girlchoicebutton_view()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 8, top: 8),
                color: COLOR_ORANGE,
                child: const Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "*步驟2 拍攝影片",
                style: themeData.textTheme.titleLarge,
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: ()   {
                //getVideo(ImageSource.camera);
                Navigator.push(
                    context, SlideRightRoute(widget:  CameraScreen()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 120, top: 180),
                color: COLOR_ORANGE,
                child: const Icon(
                  Icons.add_circle,
                  size: 150,
                ),
              ),
            ),
            addVerticalSapce(195),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, SlideRightRoute(widget: Step2_video_view()));
              },
              child: Container(
                  height: 75,
                  width: 300,
                  margin: EdgeInsets.only(
                    left: 45,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48.0),
                      color: COLOR_GRAY,
                      boxShadow: const [
                        BoxShadow(
                          color: COLOR_CLEAR_GRAY,
                          offset: Offset(0, 10),
                          blurRadius: 5,
                        ),
                      ]),
                  child: const Icon(
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
