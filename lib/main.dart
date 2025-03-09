import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iphone/bluetooth_settings.dart';
import 'package:iphone/wifi_settings.dart';
import 'variables.dart';

void main() {
  runApp(
    CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),

        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(
            CupertinoIcons.profile_circled,
            size: 25,
            color: CupertinoColors.white,
          ),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text(
                    'Development Team',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  ),
                  content: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.systemGrey.withOpacity(0.1),
                          image: DecorationImage(
                            image: AssetImage('images/aaron.jpg'),
                            alignment: Alignment.centerRight,
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Avendano, Aaron Jireh",
                                    style: TextStyle(color: Color(0xFFFFFFFF)),
                                  ),
                                  Text(
                                    "Quality Assurance Tester",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),

                      Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.systemGrey.withOpacity(0.1),
                          image: DecorationImage(
                            image: AssetImage('images/joseph.jpg'),
                            alignment: Alignment.centerRight,
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Basilio, Joseph Lee",
                                    style: TextStyle(color: Color(0xFFFFFFFF)),
                                  ),
                                  Text(
                                    "UI/UI Designer",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.systemGrey.withOpacity(0.1),
                          image: DecorationImage(
                            image: AssetImage('images/joel.jpg'),
                            alignment: Alignment.centerRight,
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dizon, Joel",
                                    style: TextStyle(color: Color(0xFFFFFFFF)),
                                  ),
                                  Text(
                                    "Quality Assurance Tester",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.systemGrey.withOpacity(0.1),
                          image: DecorationImage(
                            image: AssetImage('images/jc.jpg'),
                            alignment: Alignment.centerRight,
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dizon, John Carlo",
                                    style: TextStyle(color: Color(0xFFFFFFFF)),
                                  ),
                                  Text(
                                    "Software Developer",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CupertinoColors.systemGrey.withOpacity(0.1),
                          image: DecorationImage(
                            image: AssetImage('images/jomel.jpg'),
                            alignment: Alignment.centerRight,
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Simbillio, Jomel",
                                    style: TextStyle(color: Color(0xFFFFFFFF)),
                                  ),
                                  Text(
                                    "UI/UX Designer",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    CupertinoButton(
                      child: Text(
                        'Close',
                        style: TextStyle(color: CupertinoColors.destructiveRed),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),

      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                // START CONTAINER ----------------------
                CupertinoTextField(
                  padding: EdgeInsets.all(10),
                  suffix: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.mic_fill,
                      color: CupertinoColors.white,
                      size: 18,
                    ),
                  ),
                  prefix: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Icon(
                      CupertinoIcons.search,
                      color: CupertinoColors.white,
                      size: 18,
                    ),
                  ),
                  placeholder: "Search",
                  placeholderStyle: TextStyle(color: CupertinoColors.white),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                //END CONTAINER --------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
