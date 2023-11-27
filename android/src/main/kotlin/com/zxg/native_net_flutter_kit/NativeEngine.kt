package com.zxg.native_net_flutter_kit

import io.flutter.plugin.common.MethodChannel


/**
 * createDate: 2023/9/18 on 22:45
 * desc:
 *
 * @author xueml
 */

class NativeEngine {
    var protocol: FlutterNetProtocol? = null;

    companion object {
        val instance by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
            NativeEngine()
        }
    }

    fun setMyNetRegister(protocol: FlutterNetProtocol) {
        this.protocol = protocol;
    }


    /**
     * result example:
     *  val map = HashMap<String, Any>()
     *  map["code"] = 200
     *  map["message"] = "OK"
     *  map["data"] = "{\"code\":\"100\"}"
     */
    fun get(url: String, params: Any?, result: MethodChannel.Result) {
//        val map = HashMap<String, Any>()
//        map["code"] = 200
//        map["message"] = "OK"
//        map["data"] = "{\"code\":\"100\"}"
//        result.success(map)
        protocol?.get(url, params, result)
    }

    fun post(url: String, params: Any?, result: MethodChannel.Result) {
        protocol?.post(url, params, result)
    }

    fun postJson(url: String, params: Any?, result: MethodChannel.Result) {
        protocol?.postJson(url, params, result)
    }

    fun del(url: String, params: Any?, result: MethodChannel.Result) {
        protocol?.del(url, params, result)
    }

    fun put(url: String, params: Any?, result: MethodChannel.Result) {
        protocol?.put(url, params, result)
    }
}