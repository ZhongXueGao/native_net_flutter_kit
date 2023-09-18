import 'package:flutter_test/flutter_test.dart';
import 'package:native_net_flutter_kit/native_net_flutter_kit_platform_interface.dart';
import 'package:native_net_flutter_kit/native_net_flutter_kit_method_channel.dart';

void main() {
  final NativeNetFlutterKitPlatform initialPlatform =
      NativeNetFlutterKitPlatform.instance;

  test('$MethodChannelNativeNetFlutterKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeNetFlutterKit>());
  });
}
