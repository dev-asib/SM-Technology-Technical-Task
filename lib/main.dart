import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uip_tv/core/exported_files/exported_files.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModel2Adapter());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const UIPTV(),
    ),
  );
}
