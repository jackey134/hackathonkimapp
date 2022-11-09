import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class camera extends StatefulWidget {
  const camera(Future Function(ImageSource source) getVideo, {Key? key}) : super(key: key);

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {

  Future getVideo(ImageSource source) async {
    try {
      final video = await ImagePicker().pickVideo(source: source);
      if (video == null) {
        return;
      }
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future<File> saveFilePermanently(String videoPath) async {
    final directory = await getExternalStorageDirectory();
    // var x = await getExternalStorageDirectory();
    // print(x)
    String? dirDir = directory?.path;
    print(dirDir);

    final name = basename(videoPath);
    final video = File('${directory?.path}/$name');

    print(video);

    return File(videoPath).copy(video.path);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

