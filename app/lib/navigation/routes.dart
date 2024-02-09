import 'package:business/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui/pages/splash_page.dart';

import '../connectors/create_one_time_notification_page_connector.dart';
import '../connectors/forgot_password_page_connector.dart';
import '../connectors/home_page_connector.dart';
import '../connectors/log_in_with_time_page_connector.dart';
import '../connectors/registration_page_connector.dart';
import '../connectors/reset_password_page_connector.dart';
import '../dialogs/exception_dialog.dart';
import 'routers_flow.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class Routes {
  static const initial = 'initial';
  static const splash = 'splash';
  static const home = 'home';
  static const login = 'login';
  static const registration = 'registration';
  static const forgotPassword = 'forgotPassword';
  static const createOneTimeNotification = 'create-one-time-notification';
}

GoRouter get router => RoutersMap.instance._currentRouter;

class RoutersMap {
  RoutersMap._();

  static final RoutersMap instance = RoutersMap._();

  late GoRouter _currentRouter = _splashRouter;

  RoutersFlow _currentFlow = const SplashFlow();

  GoRouter routerWithFlow(RoutersFlow flow) {
    if (_currentFlow == flow) {
      return _currentRouter;
    }

    _currentFlow = flow;

    final newRouter = switch (flow) {
      AuthFlow() => _authRouter,
      SplashFlow() => _splashRouter,
      HomeFlow() => _homeRouter,
    };

    _currentRouter = newRouter;

    return newRouter;
  }

  GoRouter get _splashRouter => GoRouter(
        initialLocation: '/splash',
        routes: [
          GoRoute(
            path: '/splash',
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const ExceptionDialog<AppState>(child: SplashPage()),
            ),
          ),
        ],
      );

  GoRouter get _homeRouter => GoRouter(
        initialLocation: '/home',
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child:
                  const ExceptionDialog<AppState>(child: HomePageConnector()),
            ),
            routes: [
              GoRoute(
                name: Routes.createOneTimeNotification,
                path: 'create-one-time-notification',
                pageBuilder: (context, state) => MaterialPage<void>(
                  key: state.pageKey,
                  fullscreenDialog: true,
                  child: const ExceptionDialog<AppState>(
                    child: CreateOneTimeNotificationPageConnector(),
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  GoRouter get _authRouter => GoRouter(
        initialLocation: '/',
        redirect: (context, state) {
          switch (_currentFlow) {
            case AuthFlow(:final redirection)
                when redirection == AuthFlowRedirection.resetPassword:
              return '/reset-password';
            case AuthFlow(:final redirection)
                when redirection == AuthFlowRedirection.createPassword:
              return '/create-password';
            case _:
              return null;
          }
        },
        routes: [
          GoRoute(
            name: Routes.login,
            path: '/',
            builder: (context, state) => const ExceptionDialog<AppState>(
              child: LogInWithTimePageConnector(),
            ),
            routes: [
              GoRoute(
                name: Routes.registration,
                path: 'registration',
                pageBuilder: (context, state) => MaterialPage<void>(
                  key: state.pageKey,
                  child: const RegistrationPageConnector(),
                ),
              ),
              GoRoute(
                name: Routes.forgotPassword,
                path: 'forgot-password',
                pageBuilder: (context, state) => MaterialPage<void>(
                  key: state.pageKey,
                  child: const ForgotPasswordPageConnector(),
                ),
              ),
              GoRoute(
                path: 'reset-password',
                pageBuilder: (context, state) => MaterialPage<void>(
                  key: state.pageKey,
                  child: const ResetPasswordPageConnector(),
                ),
              ),
            ],
          ),
        ],
      );
}
