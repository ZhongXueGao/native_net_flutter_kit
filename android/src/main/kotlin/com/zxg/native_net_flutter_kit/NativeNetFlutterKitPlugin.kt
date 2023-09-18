package com.zxg.native_net_flutter_kit

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** NativeNetFlutterKitPlugin */
class NativeNetFlutterKitPlugin : FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "native_net_flutter_kit")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        val arguments = call.arguments as Map<*, *>
        val url = arguments["url"]
        val params = arguments["params"]
        when (call.method) {
            "get" -> {
                NativeEngine.instance.get(url.toString(), params, result)
            }
            "post" -> {
                NativeEngine.instance.post(url.toString(), params, result)
            }
            "postJson" -> {
                NativeEngine.instance.postJson(url.toString(), params, result)
            }
            "del" -> {
                NativeEngine.instance.del(url.toString(), params, result)
            }
            "put" -> {
                NativeEngine.instance.put(url.toString(), params, result)
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
