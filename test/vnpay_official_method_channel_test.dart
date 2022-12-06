import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vnpay_official/vnpay_official_method_channel.dart';

void main() {
  MethodChannelVnpayOfficial platform = MethodChannelVnpayOfficial();
  const MethodChannel channel = MethodChannel('vnpay_official');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
