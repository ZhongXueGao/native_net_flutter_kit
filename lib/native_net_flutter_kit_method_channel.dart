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
    final result = await methodChannel.invokeMethod<Map<String, dynamic>>(
      'get',
      [url, params],
    );
    return {};
  }

  @override
  Future<Map<String, dynamic>> post(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map<String, dynamic>>(
      'post',
      [url, params],
    );
    return {};
  }

  @override
  Future<Map<String, dynamic>> postJson(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map<String, dynamic>>(
      'postJson',
      [url, params],
    );
    return {};
  }

  @override
  Future<Map<String, dynamic>> del(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map<String, dynamic>>(
      'del',
      [url, params],
    );
    return {};
  }

  @override
  Future<Map<String, dynamic>> put(
    String url, {
    Map<String, dynamic>? params,
  }) async {
    final result = await methodChannel.invokeMethod<Map<String, dynamic>>(
      'put',
      [url, params],
    );
    return {};
  }
}
