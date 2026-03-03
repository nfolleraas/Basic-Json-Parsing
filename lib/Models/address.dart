class Address {
  String street;
  String city;
  String zipCode;

  Address({
    required this.street,
    required this.city,
    required this.zipCode,
  });

  factory Address.fromJson(Map<String, dynamic> data) {
    final street = data['street'] as String;
    final city = data['city'] as String;
    final zipCode = data['zipCode'] as String;

    return Address(street: street, city: city, zipCode: zipCode);
  }
}
