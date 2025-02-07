import 'package:flutter/material.dart';
import 'package:pomodoro/landing.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io';

// Import the package required to fix window size window management

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  if (Platform.isMacOS) {
    final windowManager = WindowManager.instance;
    windowManager.setMinimumSize(const Size(1650, 1600));
    windowManager.setMaximumSize(const Size(1650, 1600));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          final mediaQueryData = MediaQuery.of(context);
          const screenWidth = 250.0;
          const screenHeight = 400.0;
          return MediaQuery(
            data: mediaQueryData.copyWith(
              size: const Size(screenWidth, screenHeight),
              devicePixelRatio: mediaQueryData.devicePixelRatio,
            ),
            child: SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: LandingPage(),
            ),
          );
        },
      ),
    );
  }
}
