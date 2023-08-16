// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserContainer _$$_UserContainerFromJson(Map<String, dynamic> json) =>
    _$_UserContainer(
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <User>[],
    );

Map<String, dynamic> _$$_UserContainerToJson(_$_UserContainer instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
      address: UserAddress.fromJson(json['address'] as Map<String, dynamic>),
      company: UserCompany.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address,
      'company': instance.company,
    };

_$_UserAddress _$$_UserAddressFromJson(Map<String, dynamic> json) =>
    _$_UserAddress(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: json['geo'] == null
          ? null
          : UserAddressGeo.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserAddressToJson(_$_UserAddress instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };

_$_UserAddressGeo _$$_UserAddressGeoFromJson(Map<String, dynamic> json) =>
    _$_UserAddressGeo(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$$_UserAddressGeoToJson(_$_UserAddressGeo instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$_UserCompany _$$_UserCompanyFromJson(Map<String, dynamic> json) =>
    _$_UserCompany(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$$_UserCompanyToJson(_$_UserCompany instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
