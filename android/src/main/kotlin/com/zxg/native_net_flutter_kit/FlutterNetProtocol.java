package android.src.main.kotlin.com.zxg.native_net_flutter_kit;

import io.flutter.plugin.common.MethodChannel;

public interface FlutterNetProtocol {
    void get(String url, Object params, MethodChannel.Result result);

    void post(String url, Object params, MethodChannel.Result result);

    void postJson(String url, Object params, MethodChannel.Result result);

    void del(String url, Object params, MethodChannel.Result result);

    void put(String url, Object params, MethodChannel.Result result);
}
