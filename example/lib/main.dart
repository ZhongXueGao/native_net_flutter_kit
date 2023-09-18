import 'package:flutter/material.dart';

import 'package:native_net_flutter_kit/native_net_flutter_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _plugin = NativeNetFlutterKit();

  var _result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NativeNetPlugin'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                child: const Text('Get请求'),
                onPressed: () async {
                  var result =
                      await _plugin.get('http:wwww.baidu.com/', params: {});
                  setState(() {
                    _result = result.toString();
                  });
                },
              ),
              Text('get result:\n\n $_result'),
            ],
          ),
        ),
      ),
    );
  }
}
