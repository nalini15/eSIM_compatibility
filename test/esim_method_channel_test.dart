import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:esim/esim_method_channel.dart';

void main() {
  MethodChannelEsim platform = MethodChannelEsim();
  const MethodChannel channel = MethodChannel('esim');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}
