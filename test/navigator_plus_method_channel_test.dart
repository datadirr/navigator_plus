import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigator_plus/navigator_plus_method_channel.dart';

void main() {
  MethodChannelNavigatorPlus platform = MethodChannelNavigatorPlus();
  const MethodChannel channel = MethodChannel('navigator_plus');

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
