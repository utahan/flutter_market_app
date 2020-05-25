import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }
  Future<dynamic> navigateToWithArgument(String routeName,var arg) {
    return navigatorKey.currentState.pushNamed(routeName,arguments: arg);
  }
}