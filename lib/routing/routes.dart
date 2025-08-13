import 'package:betterschool/ui/login/pages/login_page.dart';
import 'package:flutter/widgets.dart';

final String initialRoute = "/login";

final Map<String, WidgetBuilder> routes = {
  initialRoute: (BuildContext context) => const LoginPage(),
};
