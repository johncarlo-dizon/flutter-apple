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
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CupertinoColors.systemGrey.withOpacity(
                                0.2,
                              ),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Icon(
                          CupertinoIcons.bluetooth,
                          size: 50,
                          color: CupertinoColors.white,
                        ),
                      ),

                      SizedBox(height: 15),
                      Text(
                        'Bluetooth',
                        style: TextStyle(
                          color: CupertinoColors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text:
                              "Connect to accessories you can use for activities such as streaming music, making phone calls, and gaming.",
                          style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Learn more...",
                              style: TextStyle(
                                color: CupertinoColors.systemBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Bluetooth",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          blueSwitchState
                              ? CupertinoSwitch(
                                value: blueStatus,
                                onChanged: (bool value) {
                                  setState(() {
                                    blueStatus = !blueStatus;
                                    blueSwitchState = false;

                                    blueStatus
                                        ? blueLoading = true
                                        : blueLoading = false;

                                    Timer(Duration(milliseconds: 300), () {
                                      setState(() {
                                        blueSwitchState = true;
                                      });
                                    });

                                    Timer(Duration(milliseconds: 3000), () {
                                      setState(() {
                                        blueStatus
                                            ? blueLoading = false
                                            : blueLoading = false;
                                      });
                                    });
                                  });
                                },
                              )
                              : Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CupertinoActivityIndicator(),
                              ),
                        ],
                      ),
                    ],
                  ),
                ),

                //WIFI TURN ON
                blueStatus == false
                    ? Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text(
                        'AirDrop, AirPlay, Find My, Location Services and Thread use Bluetooth.',
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                    : SizedBox.shrink(),

                blueLoading
                    ? Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text(
                        'This iPhone is discoverable as "John Carlo iPhone" while Bluetooth setting is open.',
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                    : SizedBox.shrink(),

                blueStatus && blueLoading != true
                    ? SizedBox(height: 40)
                    : SizedBox.shrink(),

                blueStatus && blueLoading != true
                    ? Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Text(
                                  "Allow New Connections",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Row(children: [

                                    ],
                                  ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                    : SizedBox.shrink(),

                blueStatus && blueLoading != true
                    ? Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text(
                        "New bluetooth connections have been turned off from Control Center",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                    : SizedBox.shrink(),

                blueStatus
                    ? Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                          child: Text(
                            "MY DEVICES",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    )
                    : SizedBox.shrink(),

                blueStatus
                    ? Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Text(
                                  "BEATS PROBO",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Not Connected',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(CupertinoIcons.exclamationmark_circle),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Divider(),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Text(
                                  "AirPods",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Not Connected',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(CupertinoIcons.exclamationmark_circle),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Divider(),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Text(
                                  "inkax-T02",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Not Connected',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(CupertinoIcons.exclamationmark_circle),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Divider(),
                          ),
                        ],
                      ),
                    )
                    : SizedBox.shrink(),

                // CONTENT END ------------------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
