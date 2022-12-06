import 'package:flutter_test/flutter_test.dart';
import 'package:vnpay_official/vnpay_official.dart';
import 'package:vnpay_official/vnpay_official_platform_interface.dart';
import 'package:vnpay_official/vnpay_official_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVnpayOfficialPlatform 
    with MockPlatformInterfaceMixin
    implements VnpayOfficialPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VnpayOfficialPlatform initialPlatform = VnpayOfficialPlatform.instance;

  test('$MethodChannelVnpayOfficial is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVnpayOfficial>());
  });

  test('getPlatformVersion', () async {
    VnpayOfficial vnpayOfficialPlugin = VnpayOfficial();
    MockVnpayOfficialPlatform fakePlatform = MockVnpayOfficialPlatform();
    VnpayOfficialPlatform.instance = fakePlatform;
  
    expect(await vnpayOfficialPlugin.getPlatformVersion(), '42');
  });
}
