import 'dart:io';

import 'package:external_path/external_path.dart';
import 'package:permission_handler/permission_handler.dart';

Future<String> createNewDir() async {
  requestPermission();
  final dir = await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DCIM);
  print(dir);
  var file = Directory("$dir/app");
  print(file);
  try {
    bool exists = await file.exists();
    if (!exists) {
      await file.create(recursive: true);
      print("創建成功");
    } else {
      print("存在");
    }
  } catch (e) {
    print(e);
  }
  return file.path.toString();
}

Future requestPermission() async {
  if (await Permission.contacts.request().isGranted) {
// Either the permission was already granted before or the user just granted it.
  }
// You can request multiple permissions at once.
  Map<Permission, PermissionStatus> statuses = await [
    Permission.storage,
  ].request();
  print(statuses[Permission.storage]);
}