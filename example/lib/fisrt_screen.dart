import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:navigator_plus/navigate.dart';
import 'package:navigator_plus_example/routes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String _ownerName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Owner: $_ownerName"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                NavigatorName.to(
                  context,
                  Routes.secondScreen,
                  arguments: {'name': 'datadirr'},
                  result: (result) {
                    if (result.resultOk) {
                      log("Owner: ${result.data['ownerName']}");
                      setState(() {
                        _ownerName = result.data['ownerName'];
                      });
                    }
                  },
                );
              },
              child: const Text("Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
