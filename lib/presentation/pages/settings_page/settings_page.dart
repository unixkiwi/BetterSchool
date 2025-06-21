import 'package:flutter/material.dart';
import 'package:school_app/data/models/oauth_repo_impl_webview.dart';
import 'package:school_app/presentation/viewmodels/settings_page_viewmodel.dart';
import 'package:school_app/utils/logger.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var result = "Not ran";

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // OutlinedButton(
          //   child: const Text("TESTING IN THE WRONG SPOT lol"),
          //   onPressed: () async {
          //     var webviewOauthImpl = BesteSchuleOauthWebviewRepoImpl();

          //     String resp =
          //         await webviewOauthImpl.getToken(context: context) ??
          //         "Response was null";

          //     showDialog(
          //       context: context,
          //       builder: (context) {
          //         return Dialog(child: Text(resp));
          //       },
          //     );
          //   },
          // ),
          // FilledButton(
          //   onPressed: () {
          //     final mode = SettingsPageViewmodel.mode;
          //     if (mode == ThemeMode.system) {
          //       SettingsPageViewmodel.mode = ThemeMode.light;
          //     } else if (mode == ThemeMode.light) {
          //       SettingsPageViewmodel.mode = ThemeMode.dark;
          //     } else {
          //       SettingsPageViewmodel.mode = ThemeMode.system;
          //     }

          //     logger.i(
          //       "Changed theme to ${SettingsPageViewmodel.mode.toString()}",
          //     );
          //   },
          //   child: Text("Theme toggle"),
          // ),
          // Text(result),
        ],
      ),
    );
  }
}
