class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  num? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  Object? ip;
  Adres? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;

  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.domain,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
  });

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'maidenName': maidenName,
      'age': age,
      'gender': gender,
      'email': email,
      'phone': phone,
      'username': username,
      'password': password,
      'birthDate': birthDate,
      'image': image,
      'bloodGroup': bloodGroup,
      'height': height,
      'weight': weight,
      'eyeColor': eyeColor,
      'hair': hair?.toMap(),
      'domain': domain,
      'ip': ip,
      'address': address?.toMap(),
      'macAddress': macAddress,
      'university': university,
      'bank': bank?.toMap(),
      'company': company?.toMap(),
      'ein': ein,
      'ssn': ssn,
      'userAgent': userAgent,
    };
  }

  factory UserModel.fromMap(Map<String, Object?> map) {
    return UserModel(
      id: map['id'] as int?,
      firstName: map['firstName'] as String?,
      lastName: map['lastName'] as String?,
      maidenName: map['maidenName'] as String?,
      age: map['age'] as int?,
      gender: map['gender'] as String?,
      email: map['email'] as String?,
      phone: map['phone'] as String?,
      username: map['username'] as String?,
      password: map['password'] as String?,
      birthDate: map['birthDate'] as String?,
      image: map['image'] as String?,
      bloodGroup: map['bloodGroup'] as String?,
      height: map['height'] as int?,
      weight: map['weight'] as num?,
      eyeColor: map['eyeColor'] as String?,
      hair: Hair.fromMap(map['hair'] as Map<String, Object?>),
      domain: map['domain'] as String?,
      ip: map['ip'],
      address: Adres.fromMap(map['address'] as Map<String, Object?>),
      macAddress: map['macAddress'] as String?,
      university: map['university'] as String?,
      bank: Bank.fromMap(map['bank'] as Map<String, Object?>),
      company: Company.fromMap(map['company'] as Map<String, Object?>),
      ein: map['ein'] as String?,
      ssn: map['ssn'] as String?,
      userAgent: map['userAgent'] as String?,
    );
  }
}

class Hair {
  String? color;
  String? type;

  Hair({
    this.color,
    this.type,
  });

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'color': color,
      'type': type,
    };
  }

  factory Hair.fromMap(Map<String, Object?> map) {
    return Hair(
      color: map['color'] as String?,
      type: map['type'] as String?,
    );
  }

  @override
  String toString() => 'Hair(color: $color, type: $type)';
}

class Bank {
  String? cardExpirel;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank({
    required this.cardExpirel,
    required this.cardNumber,
    required this.cardType,
    required this.currency,
    required this.iban,
  });

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'cardExpirel': cardExpirel,
      'cardNumber': cardNumber,
      'cardType': cardType,
      'currency': currency,
      'iban': iban,
    };
  }

  factory Bank.fromMap(Map<String, Object?> map) {
    return Bank(
      cardExpirel: map['cardExpirel'] as String?,
      cardNumber: map['cardNumber'] as String?,
      cardType: map['cardType'] as String?,
      currency: map['currency'] as String?,
      iban: map['iban'] as String?,
    );
  }

  @override
  String toString() {
    return 'Bank(cardExpirel: $cardExpirel, cardNumber: $cardNumber, cardType: $cardType, currency: $currency, iban: $iban)';
  }
}

class Company {
  Adres? address;
  String? department;
  String? name;
  String? title;

  Company({
    this.address,
    this.department,
    this.name,
    this.title,
  });

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'address': address?.toMap(),
      'department': department,
      'name': name,
      'title': title,
    };
  }

  factory Company.fromMap(Map<String, Object?> map) {
    return Company(
      address: Adres.fromMap(map['address'] as Map<String, Object?>),
      department: map['department'] as String?,
      name: map['name'] as String?,
      title: map['title'] as String?,
    );
  }

  @override
  String toString() {
    return 'Company(address: $address, department: $department, name: $name, title: $title)';
  }
}

class Adres {
  String? address;
  String? city;
  Cordinates? coordinates;
  String? postalCode;
  String? state;

  Adres({
    this.address,
    this.city,
    this.coordinates,
    this.postalCode,
    this.state,
  });

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'address': address,
      'city': city,
      'coordinates': coordinates,
      'postalCode': postalCode,
      'state': state,
    };
  }

  factory Adres.fromMap(Map<String, Object?> map) {
    return Adres(
      address: map['address'] as String?,
      city: map['city'] as String?,
      coordinates:
      Cordinates.fromMap(map['coordinates'] as Map<String, Object?>),
      postalCode: map['postalCode'] as String?,
      state: map['state'] as String?,
    );
  }

  @override
  String toString() {
    return 'Adres(address: $address, city: $city, coordinates: $coordinates, postalCode: $postalCode, state: $state)';
  }
}

class Cordinates {
  double? lat;
  double? lng;

  Cordinates({
    this.lat,
    this.lng,
  });

  Map<String, Object?> toMap() {
    return <String, Object?>{
      'lat': lat,
      'lng': lng,
    };
  }

  factory Cordinates.fromMap(Map<String, Object?> map) {
    return Cordinates(
      lat: map['lat'] as double?,
      lng: map['lng'] as double?,
    );
  }

  @override
  String toString() => 'Cordinates(lat: $lat, lng: $lng)';
}
