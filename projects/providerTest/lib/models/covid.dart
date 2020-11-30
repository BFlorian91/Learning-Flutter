class Covid {
  String country;
  String countryCode;
  String slug;
  int newConfirmed;
  int totalConfirmed;
  int newDeaths;
  int totalDeaths;
  int newRecovered;
  int totalRecovered;
  String error;

  Covid({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.error,
  });

  Covid.withError(String errorMessage) {
    this.error = errorMessage;
  }

  factory Covid.fromJson(Map<String, dynamic> json) {
    return Covid(
      country: json['Countries'][0]['Country'],
      countryCode: json['Countries'][0]['CountryCode'],
      slug: json['Countries'][0]['Slug'],
      newConfirmed: json['Countries'][0]['NewConfirmed'],
      totalConfirmed: json['Countries'][0]['TotalConfirmed'],
      newDeaths: json['Countries'][0]['NewDeaths'],
      totalDeaths: json['Countries'][0]['TotalDeaths'],
      newRecovered: json['Countries'][0]['NewRecovered'],
      totalRecovered: json['Countries'][0]['TotalRecoverd'],
    );
  }
}
