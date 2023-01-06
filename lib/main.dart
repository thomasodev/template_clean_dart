import 'package:flutter/material.dart';

import 'presentation/pages/home_page.dart';
import 'shared/routes/app_routes.dart';
import 'shared/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template Clean Dart',
      theme: AppTheme.theme,
      routes: AppRoutes.routes,
      initialRoute: HomePage.screenName,
    );
  }
}
