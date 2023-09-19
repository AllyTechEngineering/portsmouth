import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portsmouth/models/centerboard_class.dart';
import 'package:portsmouth/utilities/theme.dart';

class DefinitionScreen extends StatefulWidget {
  const DefinitionScreen({super.key});

  @override
  State<DefinitionScreen> createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
            ),
            iconSize: 40.0,
            onPressed: () => context.go('/'),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Definitions',
              style: TextStyle(
                // fontFamily: kFontTypeForApp,
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          actions: <Widget>[
            // IconButton(
            //   icon: const Icon(
            //     Icons.settings,
            //     color: Colors.white,
            //   ),
            //   onPressed: () => context.go('/'),
            // ),
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
      ),
    );
  }
}
