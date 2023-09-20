import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portsmouth/common/theme.dart';
import 'package:portsmouth/views/centerboard_screen.dart';
import 'package:portsmouth/views/definition_screen.dart';
import 'package:portsmouth/views/home_screen.dart';
import 'package:portsmouth/views/keelboat_screen.dart';
import 'package:portsmouth/views/multihull_screen.dart';
import 'package:portsmouth/views/offshore_screen.dart';
import 'package:portsmouth/views/settings_screen.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
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
      theme: appTheme,
      // home: const HomeScreen(),
    );
  }
}
