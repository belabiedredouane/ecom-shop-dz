import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/theme_provider.dart';
import 'routes.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>(
              create: (context) => ThemeProvider()),
        ],
        builder: (context, child) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Shop',
            themeMode: themeProvider.themeMode,
            theme: AppTheme.lightTheme(context),
            darkTheme: AppTheme.darkTheme(context),
            initialRoute: SplashScreen.routeName,
            routes: routes,
          );
        });
  }
}
