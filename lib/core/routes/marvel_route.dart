import 'package:flutter/material.dart';
import '../pages/home/home_page.dart';

class MarvelRoute extends StatelessWidget {
  const MarvelRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const HomePage();
            break;
          // case '/detail':
          //   builder = (BuildContext context) => const DetailPage();
          //   break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
