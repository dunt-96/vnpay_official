
import 'vnpay_official_platform_interface.dart';

class VnpayOfficial {
  Future<String?> getPlatformVersion() {
    return VnpayOfficialPlatform.instance.getPlatformVersion();
  }
}
