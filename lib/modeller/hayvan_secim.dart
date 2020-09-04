import 'dart:io';
import 'package:path_provider/path_provider.dart';

class Sstorage {
  static Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  static Future<File> get localFile async {
    final path = await localPath;
    return File('$path/tb.txt');
  }

  static Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();
      return body;
    } catch (e) {
      return e.toString();
    }
  }

  static Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }
}

class Dgs {
  static String ad = "";
}
