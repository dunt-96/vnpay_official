import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vnpay_official_platform_interface.dart';

/// An implementation of [VnpayOfficialPlatform] that uses method channels.
class MethodChannelVnpayOfficial extends VnpayOfficialPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vnpay_official');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
