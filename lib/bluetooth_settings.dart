import 'package:flutter/cupertino.dart';
import 'package:iphone/main.dart';
import 'dart:async';
import 'variables.dart';
import 'package:flutter/material.dart';

class BluetoothApp extends StatefulWidget {
  const BluetoothApp({super.key});

  @override
  State<BluetoothApp> createState() => _BluetoothAppState();
}

class _BluetoothAppState extends State<BluetoothApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              Icon(CupertinoIcons.chevron_back),
              Text('Settings', style: TextStyle(fontSize: 20)),
            ],
          ),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(builder: (context) => MyApp()),
              (Route<dynamic> route) => false,
            );
          },
        ),
        trailing: Text(
          'Edit',
          style: TextStyle(fontSize: 20, color: CupertinoColors.systemBlue),
        ),
      ),

      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                // CONTENT START ------------------------------------------

                // CONTENT END ------------------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
