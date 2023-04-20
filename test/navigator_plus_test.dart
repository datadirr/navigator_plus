import 'package:flutter_test/flutter_test.dart';
import 'package:navigator_plus/navigator_plus.dart';
import 'package:navigator_plus/navigator_plus_platform_interface.dart';
import 'package:navigator_plus/navigator_plus_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNavigatorPlusPlatform
    with MockPlatformInterfaceMixin
    implements NavigatorPlusPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NavigatorPlusPlatform initialPlatform = NavigatorPlusPlatform.instance;

  test('$MethodChannelNavigatorPlus is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNavigatorPlus>());
  });

  test('getPlatformVersion', () async {
    NavigatorPlus navigatorPlusPlugin = NavigatorPlus();
    MockNavigatorPlusPlatform fakePlatform = MockNavigatorPlusPlatform();
    NavigatorPlusPlatform.instance = fakePlatform;

    expect(await navigatorPlusPlugin.getPlatformVersion(), '42');
  });
}
