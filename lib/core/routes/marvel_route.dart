import 'package:flutter/material.dart';
import 'package:marvelapk01/core/pages/comics/comics_page.dart';
import '../models/marvel_model_characters.dart';
import '../models/marvel_model_comics.dart';
import '../pages/character/info_character_page.dart';
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
          case '/comics':
            builder = (BuildContext context) => ComicsPage(comics: args as ResultsComics);
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
