import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'esim_method_channel.dart';

abstract class EsimPlatform extends PlatformInterface {
  /// Constructs a EsimPlatform.
  EsimPlatform() : super(token: _token);

  static final Object _token = Object();

  static EsimPlatform _instance = MethodChannelEsim();

  /// The default instance of [EsimPlatform] to use.
  ///
  /// Defaults to [MethodChannelEsim].
  static EsimPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [EsimPlatform] when
  /// they register themselves.
  static set instance(EsimPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getEsimCompatibility() {
    throw UnimplementedError('eSIM compatibility has not been implemented.');
  }
}
