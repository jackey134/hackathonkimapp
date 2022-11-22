import 'dart:io';

import 'package:external_path/external_path.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future getVideo(ImageSource source) async {
  try {
    final video = await ImagePicker().pickVideo(source: source);
    if (video == null) {
      return;
    }
    await saveVideo(video.path);
  } catch (e) {
    print('Failed to pick image: $e');
  }
}

Future<bool> saveVideo(String fileName) async {
  try {
    if (Platform.isAndroid) {
      if (await _requestPermission(Permission.camera)) {
        if(await _requestPermission(Permission.storage)){
          GallerySaver.saveVideo(fileName, toDcim: true ,albumName: "app");
          // final path = await ExternalPath.getExternalStoragePublicDirectory(
          //     ExternalPath.DIRECTORY_DCIM);
          // print(path);

          //await GallerySaver.saveVideo('$path/savevideotest');
          // await fileName.copy('$path/save');
        }

      } else {
        return false;
      }
    }
    return false;
  } catch (e) {
    print(e);
    return false;
  }
}


Future<bool> _requestPermission(Permission permission) async {
  if (await permission.isGranted) {
    //確認是否通過權限，發起權限申請
    return true;
  } else {
    var result = await permission.request(); //若為否回傳"要求權限"
    if (result == PermissionStatus.granted) {
      //判斷現在權限是否通過
      return true;
    } else {
      return false;
    }
  }
}
