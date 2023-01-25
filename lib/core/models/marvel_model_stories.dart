class MarvelModelStories {
  MarvelModelStories({
    required this.data,
  });
  late final Data data;

  MarvelModelStories.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final dataStories = <String, dynamic>{};
    dataStories['data'] = data.toJson();
    return dataStories;
  }
}

class Data {
  Data({
    required this.results,
  });

  late final List<ResultsStories> results;

  Data.fromJson(Map<String, dynamic> json) {
    results = List.from(json['results']).map((e) => ResultsStories.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final dataStories = <String, dynamic>{};
    dataStories['results'] = results.map((e) => e.toJson()).toList();
    return dataStories;
  }
}

class ResultsStories {
  ResultsStories({
    this.id,
    this.title,
    this.description,
    this.resourceURI,
    this.type,
    this.modified,
    this.thumbnail,
  });
  int? id;
  String? title;
  String? description;
  String? resourceURI;
  String? type;
  String? modified;
  String? thumbnail;

  String? get titleShort {
    int? pos = title?.indexOf('#');
    if (pos! > 0) {
      return title?.substring(0, pos);
    }
    return title;
  }

  ResultsStories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    resourceURI = json['resourceURI'];
    type = json['type'];
    modified = json['modified'];
    thumbnail = json['thumbnail'] ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAMGdUeXjc_kQzhojT74ne2PJE7fxc5szNpA&usqp=CAU';
  }

  Map<String, dynamic> toJson() {
    final dataStories = <String, dynamic>{};
    dataStories['id'] = id;
    dataStories['title'] = title;
    dataStories['description'] = description;
    dataStories['resourceURI'] = resourceURI;
    dataStories['type'] = type;
    dataStories['modified'] = modified;
    dataStories['thumbnail'] = thumbnail;
    return dataStories;
  }
}
