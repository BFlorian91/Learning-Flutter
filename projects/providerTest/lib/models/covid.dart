class Covid {
  GlobalStats global;
  List<Countries> countries;
  String error;

  Covid({
    this.global,
    this.countries,
  });

  Covid.withError(String errorMessage) {
    this.error = errorMessage;
  }

  factory Covid.fromJson(Map<String, dynamic> json) {
    GlobalStats globalStats = GlobalStats.fromJson(json);
    List<Countries> countries = List<Countries>();
    
    json['Countries']
        .forEach((value) => countries.add(Countries.fromJson(value)));
    return Covid(global: globalStats, countries: countries);
  }
}

class Countries {
  String country;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  Countries(
      {this.country,
      this.newConfirmed,
      this.totalConfirmed,
      this.newDeaths,
      this.totalDeaths,
      this.newRecovered,
      this.totalRecovered});

  factory Countries.fromJson(Map<String, dynamic> json) {
    return Countries(
        country: json['Country'],
        newConfirmed: json['NewConfirmed'],
        totalConfirmed: json['TotalConfirmed'],
        newDeaths: json['NewDeaths'],
        totalDeaths: json['TotalDeaths'],
        newRecovered: json['NewRecovered'],
        totalRecovered: json['TotalRecovered']);
  }
}

class GlobalStats {
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;

  GlobalStats({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  factory GlobalStats.fromJson(Map<String, dynamic> json) {
    return GlobalStats(
      newConfirmed: json['Global']['NewConfirmed'],
      totalConfirmed: json['Global']['TotalConfirmed'],
      newDeaths: json['Global']['NewDeaths'],
      totalDeaths: json['Global']['TotalDeaths'],
      newRecovered: json['Global']['NewRecovered'],
      totalRecovered: json['Global']['TotalRecovered'],
    );
  }
}
