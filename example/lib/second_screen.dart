import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:navigator_plus/navigate.dart';
import 'package:navigator_plus/result.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Map? _data;
  String _name = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _data = NavigatorName.getArguments(context);
    Navigate.extrasData(
      context: context,
      data: _data,
      onSuccess: (data) {
        log("Name: ${data['name']}");
        _name = data['name'];
      },
      onFailure: () {
        NavigatorName.finish(context);
      },
      keys: ["name"],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_name),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                NavigatorName.finish(
                  context,
                  result: Result(resultOk: true, data: {'ownerName': 'Ronak'}),
                );
              },
              child: const Text("Back to First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
