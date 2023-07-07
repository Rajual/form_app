class User {
  User({
    required this.id,
    required this.name,
    required this.lastName,
    required this.birthDay,
    required this.addresses,
  });
  final String id;
  final String name;
  final String lastName;
  final DateTime birthDay;
  final List<Address> addresses;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'last_name': lastName,
      'birth_day': birthDay,
      'addresses': List<Map>.from(
        addresses.map(
          (address) => address.toMap(),
        ),
      ),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    final addresses = map['addresses'] as List<Map<String, dynamic>>;
    final user = User(
      id: map['id'],
      name: map['name'],
      lastName: map['last_mame'],
      birthDay: map['birth_day'],
      addresses: List<Address>.from(
        addresses.map(
          (adderss) => Address.fromMap(adderss),
        ),
      ),
    );
    return user;
  }
}

class Address {
  Address({
    required this.country,
    required this.department,
    required this.city,
    required this.homeNumber,
  });
  final String country;
  final String department;
  final String city;
  final String homeNumber;

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'department': department,
      'city': city,
      'home_number': homeNumber,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    final address = Address(
      city: map['city'],
      country: map['country'],
      department: map['department'],
      homeNumber: map['home_number'],
    );
    return address;
  }
}
