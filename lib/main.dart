import 'package:flutter/material.dart';
import 'package:itc_chat/core/config/app_theme.dart';
import 'package:itc_chat/features/chat/ui/screens/chat_screen.dart';
import 'package:itc_chat/features/profile/ui/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          title: 'ITC Ai Chat',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: currentMode,
          home: Chat2(),
        );
      },
    );
  }
}
