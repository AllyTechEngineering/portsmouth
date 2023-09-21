import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefinitionScreen extends StatefulWidget {
  const DefinitionScreen({super.key});

  @override
  State<DefinitionScreen> createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
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
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Definitions',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () => context.go('/settings_screen'),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text:
                        'The Portsmouth scheme derives handicaps from consideration of documented race results in a variety of sailing conditions in the context of the performance characteristics of each boat. Physically, Portsmouth Numbers reflect the length of time boats will take to sail a common but unspecified distance. That is to say, a boat assigned D-PN=80 will sail the same distance in 80 minutes as a boat assigned DPN=90 will sail in 90 minutes. In this way, the Numbers provide a direct comparison of the performance of different classes, facilitating fair handicapping of race results.\n\n When referencing the Table of Precalculated Classes, Race Committees should regard handicaps bounded by parentheses with suspect as they are based on limited race data (5-15 data points). Further to this, those handicaps denoted by brackets should be taken as highly suspect as these are estimated handicaps based on less than 5 data points. Individual clubs are urged to verify and modify bracketed ratings as necessary using local race data',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
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
