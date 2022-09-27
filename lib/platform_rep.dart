import 'package:flutter/services.dart';

class PlatformRepository {
  static const platform = const MethodChannel('flutter.native/helper');

  String batteryLevel = 'Unknown battery level.';

  void getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('myverdisdk');
    } on PlatformException catch (e) {
      rethrow;
    }
  }
}
