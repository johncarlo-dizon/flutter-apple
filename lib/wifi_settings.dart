import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iphone/main.dart';
import 'variables.dart';
import 'dart:async';

class WifiApp extends StatefulWidget {
  const WifiApp({super.key});

  @override
  State<WifiApp> createState() => _WifiAppState();
}

class _WifiAppState extends State<WifiApp> {
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
                // CONTAINER -------------- START
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
                          CupertinoIcons.wifi,
                          size: 50,
                          color: CupertinoColors.white,
                        ),
                      ),

                      SizedBox(height: 15),
                      Text(
                        'Wi-Fi',
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
                              "Connect to Wi-Fi, view available networks, and manage settings for joining networks and nearby hotspots.",
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
                              "Wi-Fi",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          wifiSwitchState
                              ? CupertinoSwitch(
                                value: wifiStatus,
                                onChanged: (bool value) {
                                  setState(() {
                                    wifiStatus = !wifiStatus;
                                    wifiSwitchState = false;

                                    wifiStatus
                                        ? wifiLoading = true
                                        : wifiLoading = false;

                                    Timer(Duration(milliseconds: 300), () {
                                      setState(() {
                                        wifiSwitchState = true;
                                      });
                                    });

                                    Timer(Duration(milliseconds: 3000), () {
                                      setState(() {
                                        wifiStatus
                                            ? wifiLoading = false
                                            : wifiLoading = false;
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
                wifiStatus
                    ? Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text(
                        'New Wi-FI network connections have been turned off from Control Center',
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                    : Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                      child: Text(
                        'AirDrop, AirPlay, Notify When Left Behind, and improved location accuracy require Wi-FI',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),

                SizedBox(height: 15),

                // MY NETWORKS  LOADING START
                wifiLoading
                    ? Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
                          child: Row(
                            children: [
                              Text("NETWORKS", style: TextStyle(fontSize: 14)),
                              SizedBox(width: 10),
                              CupertinoActivityIndicator(),
                            ],
                          ),
                        ),
                      ],
                    )
                    : SizedBox.shrink(),

                // CONTAINER -------------- END
              ],
            ),
          ),
        ),
      ),
    );
  }
}
