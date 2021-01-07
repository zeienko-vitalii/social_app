import '../json_convertible.dart';

class UserContainer {
  UserContainer(this.users);

  UserContainer.fromJsonList(List<dynamic> data)
      : users = List<User>.from(
          data
                  ?.map<User>(
                    (dynamic e) => User.fromJson(
                      Map<String, dynamic>.from(e),
                    ),
                  )
                  ?.toList() ??
              const <User>[],
        );

  final List<User> users;
}

class User extends ApiJsonConvertible {
  User({this.name, this.email, this.id, this.username, this.phone, this.website, this.address, this.company})
      : super.fromJson(null);

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'],
        phone = json['phone'],
        website = json['website'],
        address = json['address'] != null ? UserAddress.fromJson(json['address']) : null,
        company = json['company'] != null ? UserCompany.fromJson(json['company']) : null,
        super.fromJson(json);

  final int id;
  final String name, username, email, phone, website;
  final UserAddress address;
  final UserCompany company;

  @override
  String toString() {
    return 'UserEntity{id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website, address: $address, company: $company}';
  }
}

class UserAddress extends ApiJsonConvertible {
  UserAddress.fromJson(Map<String, dynamic> json)
      : street = json['street'],
        suite = json['suite'],
        city = json['city'],
        zipcode = json['zipcode'],
        geo = json['geo'] != null ? UserAddressGeo.fromJson(json['geo']) : null,
        super.fromJson(json);
  final String street, suite, city, zipcode;
  final UserAddressGeo geo;

  @override
  String toString() {
    return 'UserAddress{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  }
}

class UserAddressGeo extends ApiJsonConvertible {
  UserAddressGeo.fromJson(Map<String, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'],
        super.fromJson(json);
  final String lat, lng;

  @override
  String toString() {
    return 'UserAddressGeo{lat: $lat, lng: $lng}';
  }
}

class UserCompany extends ApiJsonConvertible {
  UserCompany.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        catchPhrase = json['catchPhrase'],
        bs = json['bs'],
        super.fromJson(json);
  final String name, catchPhrase, bs;

  @override
  String toString() {
    return 'UserCompany{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }
}
