class ModelMarvelEvents {
  ModelMarvelEvents({
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
  
  ModelMarvelEvents.fromJson(Map<String, dynamic> json){
    code = json['code'];
    status = json['status'];
    copyright = json['copyright'];
    attributionText = json['attributionText'];
    attributionHTML = json['attributionHTML'];
    etag = json['etag'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final dataE = <String, dynamic>{};
    dataE['code'] = code;
    dataE['status'] = status;
    dataE['copyright'] = copyright;
    dataE['attributionText'] = attributionText;
    dataE['attributionHTML'] = attributionHTML;
    dataE['etag'] = etag;
    dataE['data'] = data.toJson();
    return dataE;
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
  late final List<ResultsEvents> results;
  
  Data.fromJson(Map<String, dynamic> json){
    offset = json['offset'];
    limit = json['limit'];
    total = json['total'];
    count = json['count'];
    results = List.from(json['results']).map((e)=>ResultsEvents.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['offset'] = offset;
    data['limit'] = limit;
    data['total'] = total;
    data['count'] = count;
    data['results'] = results.map((e)=>e.toJson()).toList();
    return data;
  }
}

class ResultsEvents {
  ResultsEvents({
    required this.id,
    required this.title,
    required this.description,
    required this.resourceURI,
    required this.urls,
    required this.modified,
    required this.start,
    required this.end,
    required this.thumbnail,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.comics,
    required this.series,
    required this.next,
    required this.previous,
  });
  late final int id;
  late final String title;
  late final String description;
  late final String resourceURI;
  late final List<Urls> urls;
  late final String modified;
  late final String start;
  late final String end;
  late final Thumbnail thumbnail;
  late final Creators creators;
  late final Characters characters;
  late final Stories stories;
  late final Comics comics;
  late final Series series;
  late final Next next;
  late final Previous previous;
  
  ResultsEvents.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    description = json['description'];
    resourceURI = json['resourceURI'];
    urls = List.from(json['urls']).map((e)=>Urls.fromJson(e)).toList();
    modified = json['modified'];
    start = json['start'];
    end = json['end'];
    thumbnail = Thumbnail.fromJson(json['thumbnail']);
    creators = Creators.fromJson(json['creators']);
    characters = Characters.fromJson(json['characters']);
    stories = Stories.fromJson(json['stories']);
    comics = Comics.fromJson(json['comics']);
    series = Series.fromJson(json['series']);
    next = Next.fromJson(json['next']);
    previous = Previous.fromJson(json['previous']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['resourceURI'] = resourceURI;
    data['urls'] = urls.map((e)=>e.toJson()).toList();
    data['modified'] = modified;
    data['start'] = start;
    data['end'] = end;
    data['thumbnail'] = thumbnail.toJson();
    data['creators'] = creators.toJson();
    data['characters'] = characters.toJson();
    data['stories'] = stories.toJson();
    data['comics'] = comics.toJson();
    data['series'] = series.toJson();
    data['next'] = next.toJson();
    data['previous'] = previous.toJson();
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
  
  Urls.fromJson(Map<String, dynamic> json){
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

class Thumbnail {
  Thumbnail({
    required this.path,
    required this.extension,
  });
  late final String path;
  late final String extension;
  
  Thumbnail.fromJson(Map<String, dynamic> json){
    path = json['path'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final dataE = <String, dynamic>{};
    dataE['path'] = path;
    dataE['extension'] = extension;
    return dataE;
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
  
  Creators.fromJson(Map<String, dynamic> json){
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e)=>e.toJson()).toList();
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
  
  Items.fromJson(Map<String, dynamic> json){
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
  
  Characters.fromJson(Map<String, dynamic> json){
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e)=>e.toJson()).toList();
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
  
  Stories.fromJson(Map<String, dynamic> json){
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final dataE = <String, dynamic>{};
    dataE['available'] = available;
    dataE['collectionURI'] = collectionURI;
    dataE['items'] = items.map((e)=>e.toJson()).toList();
    dataE['returned'] = returned;
    return dataE;
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
  
  Comics.fromJson(Map<String, dynamic> json){
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e)=>e.toJson()).toList();
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
  
  Series.fromJson(Map<String, dynamic> json){
    available = json['available'];
    collectionURI = json['collectionURI'];
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
    returned = json['returned'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['available'] = available;
    data['collectionURI'] = collectionURI;
    data['items'] = items.map((e)=>e.toJson()).toList();
    data['returned'] = returned;
    return data;
  }
}

class Next {
  Next({
    required this.resourceURI,
    required this.name,
  });
  late final String resourceURI;
  late final String name;
  
  Next.fromJson(Map<String, dynamic> json){
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

class Previous {
  Previous({
    required this.resourceURI,
    required this.name,
  });
  late final String resourceURI;
  late final String name;
  
  Previous.fromJson(Map<String, dynamic> json){
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