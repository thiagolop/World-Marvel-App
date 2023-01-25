class MarvelModelStories {
  MarvelModelStories({
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

  MarvelModelStories.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    copyright = json['copyright'];
    attributionText = json['attributionText'];
    attributionHTML = json['attributionHTML'];
    etag = json['etag'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final dataS = <String, dynamic>{};
    dataS['code'] = code;
    dataS['status'] = status;
    dataS['copyright'] = copyright;
    dataS['attributionText'] = attributionText;
    dataS['attributionHTML'] = attributionHTML;
    dataS['etag'] = etag;
    dataS['data'] = data.toJson();
    return dataS;
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
  late final List<Results> results;

  Data.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    limit = json['limit'];
    total = json['total'];
    count = json['count'];
    results = List.from(json['results']).map((e) => Results.fromJson(e)).toList();
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

class Results {
  Results({
    required this.id,
    required this.title,
    required this.description,
    required this.resourceURI,
    required this.type,
    required this.modified,
    this.thumbnail,
    required this.creators,
    required this.characters,
    required this.series,
    required this.comics,
    required this.events,
    required this.originalIssue,
  });
  late final int id;
  late final String title;
  late final String description;
  late final String resourceURI;
  late final String type;
  late final String modified;
  late final Null thumbnail;
  late final Creators creators;
  late final Characters characters;
  late final Series series;
  late final Comics comics;
  late final Events events;
  late final OriginalIssue originalIssue;

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    resourceURI = json['resourceURI'];
    type = json['type'];
    modified = json['modified'];
    thumbnail = null;
    creators = Creators.fromJson(json['creators']);
    characters = Characters.fromJson(json['characters']);
    series = Series.fromJson(json['series']);
    comics = Comics.fromJson(json['comics']);
    events = Events.fromJson(json['events']);
    originalIssue = OriginalIssue.fromJson(json['originalIssue']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['resourceURI'] = resourceURI;
    data['type'] = type;
    data['modified'] = modified;
    data['thumbnail'] = thumbnail;
    data['creators'] = creators.toJson();
    data['characters'] = characters.toJson();
    data['series'] = series.toJson();
    data['comics'] = comics.toJson();
    data['events'] = events.toJson();
    data['originalIssue'] = originalIssue.toJson();
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

class Series {
  Series({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Series.fromJson(Map<String, dynamic> json) {
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

class Comics {
  Comics({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });
  late final int available;
  late final String collectionURI;
  late final List<Items> items;
  late final int returned;

  Comics.fromJson(Map<String, dynamic> json) {
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

class OriginalIssue {
  OriginalIssue({
    required this.resourceURI,
    required this.name,
  });
  late final String resourceURI;
  late final String name;

  OriginalIssue.fromJson(Map<String, dynamic> json) {
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
