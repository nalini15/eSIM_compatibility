import 'package:flutter_test/flutter_test.dart';
import 'package:esim/esim.dart';
import 'package:esim/esim_platform_interface.dart';
import 'package:esim/esim_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockEsimPlatform
    with MockPlatformInterfaceMixin
    implements EsimPlatform {

  @override
  Future<String?> getEsimCompatibility() {
    throw UnimplementedError();
  }

}

void main() {
  final EsimPlatform initialPlatform = EsimPlatform.instance;

  test('$MethodChannelEsim is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelEsim>());
  });

  test('getEsimCompatibility', () async {
    Esim esimPlugin = Esim();
    MockEsimPlatform fakePlatform = MockEsimPlatform();
    EsimPlatform.instance = fakePlatform;

    expect(await Esim.isEsim(), '42');
  });
}
