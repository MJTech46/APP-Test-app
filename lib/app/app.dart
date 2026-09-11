import 'package:flutter/material.dart';

import 'theme.dart';
import '../features/tasks/screens/home_screen.dart';

class TaskNestApp extends StatelessWidget {
  const TaskNestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskNest',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,

      home: const HomeScreen(),
    );
  }
}