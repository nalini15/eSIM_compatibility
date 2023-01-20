
import 'package:flutter/services.dart';

class Esim {
  static const MethodChannel _channel =
  const MethodChannel('esimdemo');

  static Future<int> isEsim() async{
    final int result = await _channel.invokeMethod('isEsim');
    return result;
  }
}
