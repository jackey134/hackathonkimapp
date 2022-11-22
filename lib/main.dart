import 'package:flutter/material.dart';
import 'package:kim_app/Tools/constants.dart';
import 'package:kim_app/screens/homescreen.dart';
import 'package:camera/camera.dart';
List<CameraDescription> cameras = [];

Future<void> main() async {
  try  {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TEXT_THEME_DEFAULT
      ),
      home: Homescreen(),
    );
  }
}
