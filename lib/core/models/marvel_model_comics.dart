class MarvelModelComics {
  MarvelModelComics({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHTML,
    required this.etag,
    required this.data,
  });
  late final int code;
  late final String status;
  late final String copyright;
  late final String attributionText;
  late final String attributionHTML;
  late final String etag;
  late final Data data;

  MarvelModelComics.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    copyright = json['copyright'];
    attributionText = json['attributionText'];
    attributionHTML = json['attributionHTML'];
    etag = json['etag'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['status'] = status;
    _data['copyright'] = copyright;
    _data['attributionText'] = attributionText;
    _data['attributionHTML'] = attributionHTML;
    _data['etag'] = etag;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });
  late final int offset;
  late final int limit;
  late final int total;
  late final int count;
  late final List<ResultsComics> results;

  Data.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    total = json['total'];
    count = json['count'];
    results = List.from(json['results']).map((e) => ResultsComics.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['offset'] = offset;
    data['limit'] = limit;
    data['total'] = total;
    data['count'] = count;
    data['results'] = results.map((e) => e.toJson()).toList();
    return data;
  }
}

class ResultsComics {
  ResultsComics({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    required this.variantDescription,
    this.description,
    required this.modified,
    required this.isbn,
    required this.upc,
    required this.diamondCode,
    required this.ean,
    required this.issn,
    required this.format,
    required this.pageCount,
    required this.textObjects,
    required this.resourceURI,
    required this.urls,
    required this.series,
    required this.variants,
    required this.collections,
    required this.collectedIssues,
    required this.dates,
    required this.prices,
    required this.thumbnail,
    required this.images,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.events,
  });
  late final int id;
  late final int digitalId;
  late final String title;
  late final int issueNumber;
  late final String variantDescription;
  late final String? description;
  late final String modified;
  late final String isbn;
  late final String upc;
  late final String diamondCode;
  late final String ean;
  late final String issn;
  late final String format;
  late final int pageCount;
  late final List<TextObjects> textObjects;
  late final String resourceURI;
  late final List<Urls> urls;
  late final Series series;
  late final List<Variants> variants;
  late final List<dynamic> collections;
  late final List<dynamic> collectedIssues;
  late final List<Dates> dates;
  late final List<Prices> prices;
  late final Thumbnail thumbnail;
  late final List<Images> images;
  late final Creators creators;
  late final Characters characters;
  late final Stories stories;
  late final Events events;

  ResultsComics.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    digitalId = json['digitalId'];
    title = json['title'];
    issueNumber = json['issueNumber'];
    variantDescription = json['variantDescription'];
    description = null;
    modified = json['modified'];
    isbn = json['isbn'];
    upc = json['upc'];
    diamondCode = json['diamondCode'];
    ean = json['ean'];
    issn = json['issn'];
    format = json['format'];
    pageCount = json['pageCount'];
    textObjects = List.from(json['textObjects']).map((e) => TextObjects.fromJson(e)).toList();
    resourceURI = json['resourceURI'];
    urls = List.from(json['urls']).map((e) => Urls.fromJson(e)).toList();
    series = Series.fromJson(json['series']);
    variants = List.from(json['variants']).map((e) => Variants.fromJson(e)).toList();
    collections = List.castFrom<dynamic, dynamic>(json['collections']);
    collectedIssues = List.castFrom<dynamic, dynamic>(json['collectedIssues']);
    dates = List.from(json['dates']).map((e) => Dates.fromJson(e)).toList();
    prices = List.from(json['prices']).map((e) => Prices.fromJson(e)).toList();
    thumbnail = Thumbnail.fromJson(json['thumbnail']);
    images = List.from(json['images']).map((e) => Images.fromJson(e)).toList();
    creators = Creators.fromJson(json['creators']);
    characters = Characters.fromJson(json['characters']);
    stories = Stories.fromJson(json['stories']);
    events = Events.fromJson(json['events']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['digitalId'] = digitalId;
    data['title'] = title;
    data['issueNumber'] = issueNumber;
    data['variantDescription'] = variantDescription;
    data['description'] = description;
    data['modified'] = modified;
    data['isbn'] = isbn;
    data['upc'] = upc;
    data['diamondCode'] = diamondCode;
    data['ean'] = ean;
    data['issn'] = issn;
    data['format'] = format;
    data['pageCount'] = pageCount;
    data['textObjects'] = textObjects.map((e) => e.toJson()).toList();
    data['resourceURI'] = resourceURI;
    data['urls'] = urls.map((e) => e.toJson()).toList();
    data['series'] = series.toJson();
    data['variants'] = variants.map((e) => e.toJson()).toList();
    data['collections'] = collections;
    data['collectedIssues'] = collectedIssues;
    data['dates'] = dates.map((e) => e.toJson()).toList();
    data['prices'] = prices.map((e) => e.toJson()).toList();
    data['thumbnail'] = thumbnail.toJson();
    data['images'] = images.map((e) => e.toJson()).toList();
    data['creators'] = creators.toJson();
    data['characters'] = characters.toJson();
    data['stories'] = stories.toJson();
    data['events'] = events.toJson();
    return data;
  }
}

class TextObjects {
  TextObjects({
    required this.type,
    required this.language,
    required this.text,
  });
  late final String type;
  late final String language;
  late final String text;

  TextObjects.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    language = json['language'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['language'] = language;
    data['text'] = text;
    return data;
  }
}

class Urls {
  Urls({
    required this.type,
    required this.url,
  });
  late final String type;
  late final String url;

  Urls.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}

class Series {
  Series({
    required this.resourceURI,
    required this.name,
  });
  late final String resourceURI;
  late final String name;

  Series.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['resourceURI'] = resourceURI;
    data['name'] = name;
    return data;
  }
}

class Variants {
  Variants({
    required this.resourceURI,
    required this.name,
  });
  late final String resourceURI;
  late final String name;

  Variants.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['resourceURI'] = resourceURI;
    data['name'] = name;
    return data;
  }
}

class Dates {
  Dates({
    required this.type,
    required this.date,
  });
  late final String type;
  late final String date;

  Dates.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['date'] = date;
    return data;
  }
}

class Prices {
  Prices({
    required this.type,
    required this.price,
  });
  late final String type;
  late final double? price;

  Prices.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['price'] = price;
    return data;
  }
}

class Thumbnail {
  Thumbnail({
    required this.path,
    required this.extension,
  });
  late final String path;
  late final String extension;

  Thumbnail.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['path'] = path;
    data['extension'] = extension;
    return data;
  }
}

class Images {
  Images({
    required this.path,
    required this.extension,
  });
  late final String path;
  late final String extension;

  Images.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['path'] = path;
    data['extension'] = extension;
    return data;
  }
}

class Creators {
  Creators({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Creators.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e) => e.toJson()).toList();
    data['returned'] = returned;
    return data;
  }
}

class Items {
  Items({
    required this.resourceURI,
    required this.name,
    required this.role,
  });
  late final String resourceURI;
  late final String name;
  late final String role;

  Items.fromJson(Map<String, dynamic> json) {
    resourceURI = json['resourceURI'];
    name = json['name'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['resourceURI'] = resourceURI;
    data['name'] = name;
    data['role'] = role;
    return data;
  }
}

class Characters {
  Characters({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Characters.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e) => e.toJson()).toList();
    data['returned'] = returned;
    return data;
  }
}

class Stories {
  Stories({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Stories.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e) => e.toJson()).toList();
    data['returned'] = returned;
    return data;
  }
}

class Events {
  Events({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Events.fromJson(Map<String, dynamic> json) {
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e) => Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e) => e.toJson()).toList();
    data['returned'] = returned;
    return data;
  }
}
