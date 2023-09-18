import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_net_flutter_kit/native_net_flutter_kit_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelNativeNetFlutterKit platform =
      MethodChannelNativeNetFlutterKit();
  const MethodChannel channel = MethodChannel('native_net_flutter_kit');

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
}
