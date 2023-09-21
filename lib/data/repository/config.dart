import 'dart:convert';
import 'dart:io';

import 'package:application/schema/config.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ConfigRepository {
  static Config? config;

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> get _localFile async {
    final path = await _localPath;
    final file = File('$path/config.json');
    if (file.existsSync() == false) {
      file.createSync();
    }
    debugPrint(file.path);
    return file;
  }

  static Future<void> loadConfig() async {
    // load local config from file
    final file = await _localFile;
    String contents = await file.readAsString();
    if (contents == "") contents = "{}";

    config = Config.fromJson(jsonDecode(contents));
  }

  static set update(Config data) {
    config = data;
  }

  static Future<Config> get data async {
    if (config == null) {
      await loadConfig();
    }
    return config!;
  }

  static save() async {
    debugPrint("save file before out app");
    final file = await _localFile;
    if (config == null) {
      return;
    }
    file.writeAsString(jsonEncode(config?.toJson()));
  }
}
