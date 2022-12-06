import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vnpay_official_method_channel.dart';

abstract class VnpayOfficialPlatform extends PlatformInterface {
  /// Constructs a VnpayOfficialPlatform.
  VnpayOfficialPlatform() : super(token: _token);

  static final Object _token = Object();

  static VnpayOfficialPlatform _instance = MethodChannelVnpayOfficial();

  /// The default instance of [VnpayOfficialPlatform] to use.
  ///
  /// Defaults to [MethodChannelVnpayOfficial].
  static VnpayOfficialPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VnpayOfficialPlatform] when
  /// they register themselves.
  static set instance(VnpayOfficialPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
