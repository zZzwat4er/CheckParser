import 'package:check_parser/domain/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/check/check.dart';
import '../../ui/check_parser/check_parser.dart';
import '../../ui/item_resolver/item_resolver_screen.dart';
import '../../ui/landing/landing_screen.dart';
import '../../ui/main/main_screen.dart';

class Router {
  late final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: AppRoutes.landing.name,
        builder: (context, state) => const LandingScreen(),
      ),
      GoRoute(
        path: '/main',
        name: AppRoutes.main.name,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/check_parser',
        name: AppRoutes.checkParser.name,
        builder: (context, state) {
          final check = state.extra;
          assert(check is Check);
          return CheckParseScreen(check: check as Check);
          },
      ),
      GoRoute(
        path: '/item_resolver',
        name: AppRoutes.itemResolver.name,
        builder: (context, state) => const ItemResolverScreen(),
      ),
    ],
  );

  RouteInformationParser<Object> get informationParser =>
      _router.routeInformationParser;
  RouterDelegate<Object> get deligate => _router.routerDelegate;

  void pop(){
    _router.pop();
  }

  void initScreens({Check? check}) {
    print('init screen');
    _router.pushReplacementNamed(AppRoutes.main.name);
    if (check != null) {
      _router.pushNamed(AppRoutes.checkParser.name, extra: check);
    }
  }

  void goto(
    AppRoutes route, {
    bool push = false,
    Map<String, String>? params,
    Map<String, String>? queryParams,
    Object? extra,
  }) {
    if (push) {
      _router.pushNamed(
        route.name,
        params: params ?? {},
        queryParams: queryParams ?? {},
        extra: extra,
      );
    } else {
      _router.goNamed(
        route.name,
        params: params ?? {},
        queryParams: queryParams ?? {},
        extra: extra,
      );
    }
  }
}
