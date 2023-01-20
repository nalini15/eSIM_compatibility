import 'dart:async';

import 'package:esim/esim.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int isEsimCompatible = 0;

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> checkEsimCompatibility() async {

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      isEsimCompatible = await Esim.isEsim();
    } on PlatformException {
      debugPrint('Failed to get esim compatibility.');
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('eSIM Compatibility example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: ()async {
              await checkEsimCompatibility();
              Fluttertoast.showToast(
                  msg: isEsimCompatible ==1 ? "This device supports eSIM ":'This device does not supports eSIM',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            },
            child: const Text("Check eSIM compatibility"),
          ),
        ),
      ),
    );
  }
}