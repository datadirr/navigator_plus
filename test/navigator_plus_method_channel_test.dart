import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigator_plus/navigator_plus_method_channel.dart';

void main() {
  MethodChannelNavigatorPlus platform = MethodChannelNavigatorPlus();
  const MethodChannel channel = MethodChannel('navigator_plus');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
