import 'native_net_flutter_kit_platform_interface.dart';

class NativeNetFlutterKit {
  Future<Map<String, dynamic>> get(String url, {Map<String, dynamic>? params}) {
    return NativeNetFlutterKitPlatform.instance.get(url, params: params);
  }

  Future<Map<String, dynamic>> post(String url,
      {Map<String, dynamic>? params}) {
    return NativeNetFlutterKitPlatform.instance.post(url, params: params);
  }

  Future<Map<String, dynamic>> postJson(String url,
      {Map<String, dynamic>? params}) {
    return NativeNetFlutterKitPlatform.instance.postJson(url, params: params);
  }

  Future<Map<String, dynamic>> del(String url, {Map<String, dynamic>? params}) {
    return NativeNetFlutterKitPlatform.instance.del(url, params: params);
  }

  Future<Map<String, dynamic>> put(String url, {Map<String, dynamic>? params}) {
    return NativeNetFlutterKitPlatform.instance.put(url, params: params);
  }
}
