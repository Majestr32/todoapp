import 'package:flutter/material.dart';
import 'package:todoapp/app/consts/theme.dart';
import 'package:todoapp/app/router/router.dart';
import 'package:todoapp/app/widgets/auth_redirect.dart';
import 'package:todoapp/app/widgets/providers.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: AuthRedirect(
        child: MaterialApp.router(
          theme: AppTheme.theme,
          routerConfig: router,
        ),
      ),
    );
  }
}
