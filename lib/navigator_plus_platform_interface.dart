import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'navigator_plus_method_channel.dart';

abstract class NavigatorPlusPlatform extends PlatformInterface {
  /// Constructs a NavigatorPlusPlatform.
  NavigatorPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static NavigatorPlusPlatform _instance = MethodChannelNavigatorPlus();

  /// The default instance of [NavigatorPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelNavigatorPlus].
  static NavigatorPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NavigatorPlusPlatform] when
  /// they register themselves.
  static set instance(NavigatorPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
