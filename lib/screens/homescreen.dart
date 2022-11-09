import 'package:flutter/material.dart';
import 'package:kim_app/Tools/SlideRightRoute.dart';
import 'package:kim_app/screens/step1_1_ChoiceGender_view.dart';
import '../Tools/constants.dart';
import '../Tools/stepbutton.dart';
import '../Tools/Boxdecoration.dart';
import '../Tools/widgetfunction.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    Key? key,
  }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_ORANGE,
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(top: 15,),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "人因工程危害檢測軟體",
                      style: themeData.textTheme.titleMedium,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Center(
                  child: Image.asset("assets/images/pose.png"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          SlideRightRoute(widget: Step1_choicegender_view()));
                    },
                    child: Container(
                      height: 105,
                      width: 300,
                      padding: EdgeInsets.only(left: 90),
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
                      child:
                          Text("開始", style: themeData.textTheme.displayLarge),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
