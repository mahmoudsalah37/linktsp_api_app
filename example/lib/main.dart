import 'package:flutter/material.dart';
import 'package:linktsp_api/linktsp_api.dart';

void main() async {
  const String domin = "http://52.142.214.213:9093";
  await LinkTspApi.init(domin: domin);
  final linktspApi = LinkTspApi();
  final x = await linktspApi.account
      .login(password: 'Oasdfghjkl@123', email: 'Omarzz@gmail.com');
  // ignore: avoid_print
  print(x);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
      ),
    );
  }
}
