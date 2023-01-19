class ApiMarvel {
  static const String _publicKey = '6094bf8b83300146c723bbe79669354f';
  static const String _hash = 'd3ed3ca157d0d5c23eb608ffbd21d28a';
  static const String _ts = '1674047865';
  static const String _baseUrl = 'https://gateway.marvel.com/v1/public';
  static const String _characters = 'characters';
  static const String _comics = 'comics';
  static const String _series = 'series';
  static const String _events = 'events';
  static const String _stories = 'stories';

  static String getCharacters() {
    return '$_baseUrl/$_characters?ts=$_ts&apikey=$_publicKey&hash=$_hash';
  }

  static String getComics() {
    return '$_baseUrl/$_comics?ts=$_ts&apikey=$_publicKey&hash=$_hash';
  }

  static String getSeries() {
    return '$_baseUrl/$_series?ts=$_ts&apikey=$_publicKey&hash=$_hash';
  }

  static String getEvents() {
    return '$_baseUrl/$_events?ts=$_ts&apikey=$_publicKey&hash=$_hash';
  }

  static String getStories() {
    return '$_baseUrl/$_stories?ts=$_ts&apikey=$_publicKey&hash=$_hash';
  }
}
