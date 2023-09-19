import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portsmouth/models/centerboard_class.dart';
import 'package:portsmouth/utilities/theme.dart';
import 'package:portsmouth/views/centerboard_screen.dart';
import 'package:portsmouth/views/definition_screen.dart';
import 'package:portsmouth/views/home_screen.dart';
import 'package:portsmouth/views/keelboat_screen.dart';
import 'package:portsmouth/views/multihull_screen.dart';
import 'package:portsmouth/views/offshore_screen.dart';
import 'package:portsmouth/views/settings_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyPortsmouthApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'centerboard_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const CenterBoardScreen();
          },
        ),
        GoRoute(
          path: 'multihull_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const MultihullScreen();
          },
        ),
        GoRoute(
          path: 'keelboat_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const KeelboatScreen();
          },
        ),
        GoRoute(
          path: 'offshore_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const OffshoreScreen();
          },
        ),
        GoRoute(
          path: 'definition_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const DefinitionScreen();
          },
        ),
        GoRoute(
          path: 'settings_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
        ),
      ],
    ),
  ],
);

class MyPortsmouthApp extends StatelessWidget {
  const MyPortsmouthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'Portsmouth',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 4,
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          // color: Colors.indigo,
        ),
// Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),

// Define the default `TextTheme`. Use this to specify the default
// text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.white,
          ),
          bodyMedium: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.white,
          ),
          bodySmall: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 10,
            color: Colors.white,
          ),
          displayLarge: GoogleFonts.openSans(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.white,
          ),
          displayMedium: GoogleFonts.openSans(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.white,
          ),
          displaySmall: GoogleFonts.openSans(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        listTileTheme: ListTileThemeData(
          textColor: Colors.white,
          titleTextStyle: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Colors.white,
          ),
          subtitleTextStyle: GoogleFonts.roboto(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 20,
              color: Colors.white),
          tileColor: Colors.indigo,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 2),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
      // home: const HomeScreen(),
    );
  }
}
