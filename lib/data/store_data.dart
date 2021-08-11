class Store {
  final String title, logoUrl, latitude, longitude, address, postalCode, city;

  // Maybe use @required
  Store({
    required this.title,
    required this.logoUrl,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.postalCode,
    required this.city,
  });

  factory Store.fromJson(Map<String, dynamic> json) {
    return Store(
      title: json['title'],
      logoUrl: json['logo']['url'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      address: json['address'],
      postalCode: json['postalCode'],
      city: json['city'],
    );
  }
}
