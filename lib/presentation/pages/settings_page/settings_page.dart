import 'package:flutter/material.dart';
import 'package:school_app/data/models/oauth_repo_impl_webview.dart';

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
          OutlinedButton(
            child: Text("TESTING IN THE WRONG SPOT lol"),
            onPressed: () async {
              var webviewOauthImpl = BesteSchuleOauthWebviewRepoImpl();
          
              String resp = await webviewOauthImpl.getToken(context: context) ?? "Response was null";

              showDialog(context: context, builder: (context) {
                return Dialog(child: Text(resp),);
              },);
            },
          ),
          Text(result)
        ],
      ),
    );
  }
}
