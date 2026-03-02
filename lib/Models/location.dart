class Location {
  String city;
  String state;
  String zipCode;

  Location({
    required this.city, 
    required this.state,
    required this.zipCode,
  });

  factory Location.fromJson(Map<String, dynamic> data) {
    final city = data['city'] as String;
    final state = data['state'] as String;
    final zipCode = data['zipCode'] as String;

    return Location(
      city: city,
      state: state,
      zipCode: zipCode
    );
  }
}