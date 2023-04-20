import 'navigator_plus_platform_interface.dart';

class NavigatorPlus {
  Future<String?> getPlatformVersion() {
    return NavigatorPlusPlatform.instance.getPlatformVersion();
  }
}
