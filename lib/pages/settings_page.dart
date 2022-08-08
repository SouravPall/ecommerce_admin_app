import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/setting-page';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
    );
  }
}
