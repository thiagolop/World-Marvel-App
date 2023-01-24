import 'package:flutter/material.dart';
import 'package:marvelapk01/core/pages/events/events_page.dart';
import 'package:marvelapk01/core/pages/series/series_page.dart';
import 'package:marvelapk01/core/pages/stories/stories_page.dart';
import '../models/marvel_model_characters.dart';
import '../pages/character/info_character_page.dart';
import '../pages/comics/comics_page.dart';
import '../pages/home/home_page.dart';

class MarvelRoute extends StatelessWidget {
  const MarvelRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        final args = settings.arguments;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => const HomePage();
            break;
          case '/character':
            builder = (BuildContext context) => InfoCharacterPage(character: args as Character);
            break;
          case '/Comics':
            builder = (BuildContext context) => ComicsPage(characterID: args as int);
            break;
          case '/Series':
            builder = (BuildContext context) => const SeriesPage();
            break;
          case '/Events':
            builder = (BuildContext context) => const EventsPage();
            break;
          case '/Stories':
            builder = (BuildContext context) => const StoriesPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
