import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_net_flutter_kit_method_channel.dart';

abstract class NativeNetFlutterKitPlatform extends PlatformInterface {
  /// Constructs a NativeNetFlutterKitPlatform.
  NativeNetFlutterKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeNetFlutterKitPlatform _instance =
      MethodChannelNativeNetFlutterKit();

  /// The default instance of [NativeNetFlutterKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeNetFlutterKit].
  static NativeNetFlutterKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeNetFlutterKitPlatform] when
  /// they register themselves.
  static set instance(NativeNetFlutterKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Map<String, dynamic>> get(String url, {Map<String, dynamic>? params}) {
    throw UnimplementedError('get() has not been implemented.');
  }

  Future<Map<String, dynamic>> post(String url,
      {Map<String, dynamic>? params}) {
    throw UnimplementedError('post() has not been implemented.');
  }

  Future<Map<String, dynamic>> postJson(String url,
      {Map<String, dynamic>? params}) {
    throw UnimplementedError('postJson() has not been implemented.');
  }

  Future<Map<String, dynamic>> del(String url, {Map<String, dynamic>? params}) {
    throw UnimplementedError('del() has not been implemented.');
  }

  Future<Map<String, dynamic>> put(String url, {Map<String, dynamic>? params}) {
    throw UnimplementedError('put() has not been implemented.');
  }
}
