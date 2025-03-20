import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'navigator_plus_platform_interface.dart';

/// An implementation of [NavigatorPlusPlatform] that uses method channels.
class MethodChannelNavigatorPlus extends NavigatorPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('navigator_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
