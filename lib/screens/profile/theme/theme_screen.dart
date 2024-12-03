import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/theme_provider.dart';

class ThemeScreen extends StatefulWidget {
  static String routeName = "/thememode";
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switcher'),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text(
              'Dark',
              style: TextStyle(
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            groupValue: themeProvider.themeMode,
            value: ThemeMode.dark,
            onChanged: (value) {
              themeProvider.toggleTheme(value!);
            },
          ),
          RadioListTile(
            title: Text(
              'Light',
              style: TextStyle(
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            groupValue: themeProvider.themeMode,
            value: ThemeMode.light,
            onChanged: (value) {
              themeProvider.toggleTheme(value!);
            },
          ),
          RadioListTile(
            title: Text(
              'System',
              style: TextStyle(
                color: Theme.of(context).primaryColorLight,
              ),
            ),
            groupValue: themeProvider.themeMode,
            value: ThemeMode.system,
            onChanged: (value) {
              themeProvider.toggleTheme(value!);
            },
          ),
        ],
      ),
    );
  }
}
