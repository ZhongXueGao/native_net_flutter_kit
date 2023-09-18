package com.zxg.native_net_flutter_kit

import io.flutter.plugin.common.MethodChannel


/**
 * createDate: 2023/9/18 on 22:45
 * desc:
 *
 * @author azhon
 */

class NativeEngine {
    companion object {
        val instance by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
            NativeEngine()
        }
    }

    /**
     * result example:
     *  val map = HashMap<String, Any>()
     *  map["code"] = 200
     *  map["message"] = "OK"
     *  map["data"] = "{\"code\":\"100\"}"
     */
    fun get(url: String, params: Any?, result: MethodChannel.Result) {
        val map = HashMap<String, Any>()
        map["code"] = 200
        map["message"] = "OK"
        map["data"] = "{\"code\":\"100\"}"
        result.success(map)
    }

    fun post(url: String, params: Any?, result: MethodChannel.Result) {}

    fun postJson(url: String, params: Any?, result: MethodChannel.Result) {}

    fun del(url: String, params: Any?, result: MethodChannel.Result) {}

    fun put(url: String, params: Any?, result: MethodChannel.Result) {}
}