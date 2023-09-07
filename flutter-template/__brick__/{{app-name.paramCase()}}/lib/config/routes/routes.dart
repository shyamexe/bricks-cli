import 'package:flutter/material.dart';

import '../../modules/dashboard/screens/dashboard_screens.dart';

/// AppRouter is a class that handles the generation of routes in the app.
class AppRouter {
  /// Private constructor to prevent instance creation.
  const AppRouter._();
  /// A static method that generates a route based on the provided [settings].
  ///
  /// This method takes a [RouteSettings] object as input, which contains
  /// information about the route being generated. It returns a [Route<dynamic>]
  /// object based on the name of the route in the [settings].
  ///
  /// If the route name matches the [DashBoardScreen.routeName], it returns
  /// a [MaterialPageRoute] with a [DashBoardScreen] as its builder.
  ///
  /// If the route name doesn't match any known routes, it throws a [Scaffold]
  /// with a centered [Text] widget displaying 'Route not found!'
  ///
  /// Usage:
  /// ```dart
  /// final route = AppRouter.onGenerateRoute(settings);
  /// Navigator.of(context).pushNamed(DashBoardScreen.routeName);
  /// ```  /// A static method that generates a route based on the provided [settings].
  ///
  /// This method takes a [RouteSettings] object as input, which contains
  /// information about the route being generated. It returns a [Route<dynamic>]
  /// object based on the name of the route in the [settings].
  ///
  /// If the route name matches the [DashBoardScreen.routeName], it returns
  /// a [MaterialPageRoute] with a [DashBoardScreen] as its builder.
  ///
  /// If the route name doesn't match any known routes, it throws a [Scaffold]
  /// with a centered [Text] widget displaying 'Route not found!'
  ///
  /// Usage:
  /// final route = AppRouter.onGenerateRoute(settings);
  /// Navigator.of(context).pushNamed([DashBoardScreen.routeName]);
  /// 
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DashBoardScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const DashBoardScreen(),
        );
      default:
        throw const Scaffold(
          body: Center(
            child: Text('Route not found!'),
          ),
        );
    }
  }
}
