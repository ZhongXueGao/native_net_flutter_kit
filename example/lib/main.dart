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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NativeNetPlugin'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Get请求'),
              onPressed: () {
                _plugin.get('http:wwww.baidu.com', params: {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
