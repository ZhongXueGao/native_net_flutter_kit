#import "NativeNetFlutterKitPlugin.h"

@implementation NativeNetFlutterKitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
            methodChannelWithName:@"native_net_flutter_kit"
                  binaryMessenger:[registrar messenger]];
    NativeNetFlutterKitPlugin* instance = [[NativeNetFlutterKitPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

+ (NativeNetFlutterKitPlugin *)sharedPlugin {
    static NativeNetFlutterKitPlugin * plugins;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        plugins = [[NativeNetFlutterKitPlugin alloc] init];
    });
    return plugins;
}


- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {

    if (![NativeNetFlutterKitPlugin sharedPlugin].delegate || ![[NativeNetFlutterKitPlugin sharedPlugin].delegate respondsToSelector:@selector(invokeNativeRequestWithRequestType:requestUrl:requestParams:callBack:)]) {
        result(FlutterMethodNotImplemented);
        return;
    }

    NSString *requestUrl = call.arguments[@"url"];
    NSDictionary *requestParams = call.arguments[@"params"];
    if ([@"get" isEqualToString:call.method]) {
        [[NativeNetFlutterKitPlugin sharedPlugin].delegate invokeNativeRequestWithRequestType:@"GET" requestUrl:requestUrl requestParams:requestParams callBack:result];
    } else if ([@"post" isEqualToString:call.method]) {
        [[NativeNetFlutterKitPlugin sharedPlugin].delegate invokeNativeRequestWithRequestType:@"POST" requestUrl:requestUrl requestParams:requestParams callBack:result];
    } else {
        result(FlutterMethodNotImplemented);
    }
}

@end
