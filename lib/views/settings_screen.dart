import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
          ),
          onPressed: () => context.go('/'),
        ),
        title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Settings',
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Settings information goes here',
                    style: TextStyle(fontSize: 12.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          // child: ElevatedButton(
          //   onPressed: () => context.go('/'),
          //   child: const Text('Go back to the Home screen'),
          // ),
        ),
      ),
    );
  }
}
