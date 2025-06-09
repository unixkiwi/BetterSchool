import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/data/models/beste_schule_oauth_client_impl.dart';
import 'package:school_app/domain/repo/beste_schule_repo.dart';
import 'package:school_app/presentation/pages/login_page/login_page.dart';
import 'package:school_app/presentation/pages/overview_page/overview_page.dart';
import 'package:school_app/presentation/viewmodels/login_page_viewmodel.dart';
import 'package:school_app/presentation/viewmodels/overview_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';

class AuthChecker extends StatelessWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BesteSchuleOauthClientImpl().helper.getTokenFromStorage(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasData && snapshot.data != null) {
          if (snapshot.data!.accessToken != null) {
            logger.i("[AuthChecker] Found token in storage");
            return ChangeNotifierProvider(
              create:
                  (context) => OverviewPageViewmodel(
                    repo: context.read<BesteSchuleRepo>(),
                  ),
              child: const OverviewPage(),
            );
          }
        }

        logger.i("[AuthChecker] No token found in storage");

        return ChangeNotifierProvider(
          create:
              (context) =>
                  LoginPageViewmodel(repo: context.read<BesteSchuleRepo>()),
          child: const LoginPage(),
        );
      },
    );
  }
}
