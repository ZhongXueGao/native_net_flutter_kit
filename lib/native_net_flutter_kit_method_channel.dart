import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_net_flutter_kit_platform_interface.dart';

/// An implementation of [NativeNetFlutterKitPlatform] that uses method channels.
class MethodChannelNativeNetFlutterKit extends NativeNetFlutterKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_net_flutter_kit');

  @override
  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map>(
      'get',
      {'url': url, 'params': params},
    );
    return _convertResult(result);
  }

  @override
  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map>(
      'post',
      {'url': url, 'params': params},
    );
    return _convertResult(result);
  }

  @override
  Future<Map<String, dynamic>> postJson(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map>(
      'postJson',
      {'url': url, 'params': params},
    );
    return _convertResult(result);
  }

  @override
  Future<Map<String, dynamic>> del(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map>(
      'del',
      {'url': url, 'params': params},
    );
    return _convertResult(result);
  }

  @override
  Future<Map<String, dynamic>> put(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map>(
      'put',
      {'url': url, 'params': params},
    );
    return _convertResult(result);
  }

  Map<String, dynamic> _convertResult(Map? result) {
    if (result != null) {
      return result.map((key, value) => MapEntry(key.toString(), value));
    }
    return <String, dynamic>{};
  }
}
