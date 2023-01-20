import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'esim_platform_interface.dart';

/// An implementation of [EsimPlatform] that uses method channels.
class MethodChannelEsim extends EsimPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('esim');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  Future<Null> showToast(String msg)async{
    Map<String,dynamic>args =<String,dynamic>{};
    args.putIfAbsent('msg', () => msg);
    await methodChannel.invokeMethod('showToast',args);
    return null;
  }
}
