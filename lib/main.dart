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

                SizedBox(height: 15),

                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
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
                          ClipOval(
                            child: Image.asset(
                              'images/jcimage.jpg',
                              height: 80,
                              width: 80,
                            ),
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(7, 15, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'John Carlo Dizon',
                                            style: TextStyle(
                                              fontSize: 23,
                                              fontWeight: FontWeight.w500,
                                              color: CupertinoColors.white,
                                            ),
                                          ),
                                          Text(
                                            'Apple Account, iCloud, and more',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  CupertinoColors.inactiveGray,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        CupertinoIcons.chevron_right,
                                        color: CupertinoColors.inactiveGray,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Divider(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Your iPhone can't be backed up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: CupertinoColors.white,
                            ),
                          ),

                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                constraints: BoxConstraints(
                                  minWidth: 30,
                                  minHeight: 30,
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(width: 5),
                              Icon(
                                CupertinoIcons.chevron_right,
                                color: CupertinoColors.inactiveGray,
                                size: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Software Update Available',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: CupertinoColors.white,
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            constraints: BoxConstraints(
                              minWidth: 30,
                              minHeight: 30,
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 5),

                          Icon(
                            CupertinoIcons.chevron_right,
                            color: CupertinoColors.inactiveGray,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                //END CONTAINER --------------------------------
              ],
            ),
          ),
        ),
      ),
    );
  }
}
