// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserContainer _$UserContainerFromJson(Map<String, dynamic> json) {
  return _UserContainer.fromJson(json);
}

/// @nodoc
mixin _$UserContainer {
  List<User> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserContainerCopyWith<UserContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserContainerCopyWith<$Res> {
  factory $UserContainerCopyWith(
          UserContainer value, $Res Function(UserContainer) then) =
      _$UserContainerCopyWithImpl<$Res, UserContainer>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class _$UserContainerCopyWithImpl<$Res, $Val extends UserContainer>
    implements $UserContainerCopyWith<$Res> {
  _$UserContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserContainerCopyWith<$Res>
    implements $UserContainerCopyWith<$Res> {
  factory _$$_UserContainerCopyWith(
          _$_UserContainer value, $Res Function(_$_UserContainer) then) =
      __$$_UserContainerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$_UserContainerCopyWithImpl<$Res>
    extends _$UserContainerCopyWithImpl<$Res, _$_UserContainer>
    implements _$$_UserContainerCopyWith<$Res> {
  __$$_UserContainerCopyWithImpl(
      _$_UserContainer _value, $Res Function(_$_UserContainer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_UserContainer(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserContainer implements _UserContainer {
  const _$_UserContainer({final List<User> users = const <User>[]})
      : _users = users;

  factory _$_UserContainer.fromJson(Map<String, dynamic> json) =>
      _$$_UserContainerFromJson(json);

  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserContainer(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserContainer &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserContainerCopyWith<_$_UserContainer> get copyWith =>
      __$$_UserContainerCopyWithImpl<_$_UserContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserContainerToJson(
      this,
    );
  }
}

abstract class _UserContainer implements UserContainer {
  const factory _UserContainer({final List<User> users}) = _$_UserContainer;

  factory _UserContainer.fromJson(Map<String, dynamic> json) =
      _$_UserContainer.fromJson;

  @override
  List<User> get users;
  @override
  @JsonKey(ignore: true)
  _$$_UserContainerCopyWith<_$_UserContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  UserAddress get address => throw _privateConstructorUsedError;
  UserCompany get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website,
      UserAddress address,
      UserCompany company});

  $UserAddressCopyWith<$Res> get address;
  $UserCompanyCopyWith<$Res> get company;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? address = null,
    Object? company = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as UserCompany,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAddressCopyWith<$Res> get address {
    return $UserAddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCompanyCopyWith<$Res> get company {
    return $UserCompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String username,
      String email,
      String phone,
      String website,
      UserAddress address,
      UserCompany company});

  @override
  $UserAddressCopyWith<$Res> get address;
  @override
  $UserCompanyCopyWith<$Res> get company;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? email = null,
    Object? phone = null,
    Object? website = null,
    Object? address = null,
    Object? company = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      website: null == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddress,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as UserCompany,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.address,
      required this.company});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;
  @override
  final UserAddress address;
  @override
  final UserCompany company;

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, email: $email, phone: $phone, website: $website, address: $address, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.company, company) || other.company == company));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, username, email, phone, website, address, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      required final String name,
      required final String username,
      required final String email,
      required final String phone,
      required final String website,
      required final UserAddress address,
      required final UserCompany company}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get website;
  @override
  UserAddress get address;
  @override
  UserCompany get company;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
mixin _$UserAddress {
  String get street => throw _privateConstructorUsedError;
  String get suite => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get zipcode => throw _privateConstructorUsedError;
  UserAddressGeo? get geo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res, UserAddress>;
  @useResult
  $Res call(
      {String street,
      String suite,
      String city,
      String zipcode,
      UserAddressGeo? geo});

  $UserAddressGeoCopyWith<$Res>? get geo;
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res, $Val extends UserAddress>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
    Object? geo = freezed,
  }) {
    return _then(_value.copyWith(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: freezed == geo
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as UserAddressGeo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAddressGeoCopyWith<$Res>? get geo {
    if (_value.geo == null) {
      return null;
    }

    return $UserAddressGeoCopyWith<$Res>(_value.geo!, (value) {
      return _then(_value.copyWith(geo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserAddressCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$$_UserAddressCopyWith(
          _$_UserAddress value, $Res Function(_$_UserAddress) then) =
      __$$_UserAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String street,
      String suite,
      String city,
      String zipcode,
      UserAddressGeo? geo});

  @override
  $UserAddressGeoCopyWith<$Res>? get geo;
}

/// @nodoc
class __$$_UserAddressCopyWithImpl<$Res>
    extends _$UserAddressCopyWithImpl<$Res, _$_UserAddress>
    implements _$$_UserAddressCopyWith<$Res> {
  __$$_UserAddressCopyWithImpl(
      _$_UserAddress _value, $Res Function(_$_UserAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = null,
    Object? suite = null,
    Object? city = null,
    Object? zipcode = null,
    Object? geo = freezed,
  }) {
    return _then(_$_UserAddress(
      street: null == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
      suite: null == suite
          ? _value.suite
          : suite // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      zipcode: null == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String,
      geo: freezed == geo
          ? _value.geo
          : geo // ignore: cast_nullable_to_non_nullable
              as UserAddressGeo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAddress implements _UserAddress {
  const _$_UserAddress(
      {required this.street,
      required this.suite,
      required this.city,
      required this.zipcode,
      this.geo});

  factory _$_UserAddress.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressFromJson(json);

  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final UserAddressGeo? geo;

  @override
  String toString() {
    return 'UserAddress(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAddress &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.suite, suite) || other.suite == suite) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.geo, geo) || other.geo == geo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, street, suite, city, zipcode, geo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAddressCopyWith<_$_UserAddress> get copyWith =>
      __$$_UserAddressCopyWithImpl<_$_UserAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressToJson(
      this,
    );
  }
}

abstract class _UserAddress implements UserAddress {
  const factory _UserAddress(
      {required final String street,
      required final String suite,
      required final String city,
      required final String zipcode,
      final UserAddressGeo? geo}) = _$_UserAddress;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$_UserAddress.fromJson;

  @override
  String get street;
  @override
  String get suite;
  @override
  String get city;
  @override
  String get zipcode;
  @override
  UserAddressGeo? get geo;
  @override
  @JsonKey(ignore: true)
  _$$_UserAddressCopyWith<_$_UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddressGeo _$UserAddressGeoFromJson(Map<String, dynamic> json) {
  return _UserAddressGeo.fromJson(json);
}

/// @nodoc
mixin _$UserAddressGeo {
  String get lat => throw _privateConstructorUsedError;
  String get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressGeoCopyWith<UserAddressGeo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressGeoCopyWith<$Res> {
  factory $UserAddressGeoCopyWith(
          UserAddressGeo value, $Res Function(UserAddressGeo) then) =
      _$UserAddressGeoCopyWithImpl<$Res, UserAddressGeo>;
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class _$UserAddressGeoCopyWithImpl<$Res, $Val extends UserAddressGeo>
    implements $UserAddressGeoCopyWith<$Res> {
  _$UserAddressGeoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAddressGeoCopyWith<$Res>
    implements $UserAddressGeoCopyWith<$Res> {
  factory _$$_UserAddressGeoCopyWith(
          _$_UserAddressGeo value, $Res Function(_$_UserAddressGeo) then) =
      __$$_UserAddressGeoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lat, String lng});
}

/// @nodoc
class __$$_UserAddressGeoCopyWithImpl<$Res>
    extends _$UserAddressGeoCopyWithImpl<$Res, _$_UserAddressGeo>
    implements _$$_UserAddressGeoCopyWith<$Res> {
  __$$_UserAddressGeoCopyWithImpl(
      _$_UserAddressGeo _value, $Res Function(_$_UserAddressGeo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$_UserAddressGeo(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAddressGeo implements _UserAddressGeo {
  const _$_UserAddressGeo({required this.lat, required this.lng});

  factory _$_UserAddressGeo.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressGeoFromJson(json);

  @override
  final String lat;
  @override
  final String lng;

  @override
  String toString() {
    return 'UserAddressGeo(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAddressGeo &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAddressGeoCopyWith<_$_UserAddressGeo> get copyWith =>
      __$$_UserAddressGeoCopyWithImpl<_$_UserAddressGeo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressGeoToJson(
      this,
    );
  }
}

abstract class _UserAddressGeo implements UserAddressGeo {
  const factory _UserAddressGeo(
      {required final String lat,
      required final String lng}) = _$_UserAddressGeo;

  factory _UserAddressGeo.fromJson(Map<String, dynamic> json) =
      _$_UserAddressGeo.fromJson;

  @override
  String get lat;
  @override
  String get lng;
  @override
  @JsonKey(ignore: true)
  _$$_UserAddressGeoCopyWith<_$_UserAddressGeo> get copyWith =>
      throw _privateConstructorUsedError;
}

UserCompany _$UserCompanyFromJson(Map<String, dynamic> json) {
  return _UserCompany.fromJson(json);
}

/// @nodoc
mixin _$UserCompany {
  String get name => throw _privateConstructorUsedError;
  String get catchPhrase => throw _privateConstructorUsedError;
  String get bs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCompanyCopyWith<UserCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCompanyCopyWith<$Res> {
  factory $UserCompanyCopyWith(
          UserCompany value, $Res Function(UserCompany) then) =
      _$UserCompanyCopyWithImpl<$Res, UserCompany>;
  @useResult
  $Res call({String name, String catchPhrase, String bs});
}

/// @nodoc
class _$UserCompanyCopyWithImpl<$Res, $Val extends UserCompany>
    implements $UserCompanyCopyWith<$Res> {
  _$UserCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? catchPhrase = null,
    Object? bs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: null == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCompanyCopyWith<$Res>
    implements $UserCompanyCopyWith<$Res> {
  factory _$$_UserCompanyCopyWith(
          _$_UserCompany value, $Res Function(_$_UserCompany) then) =
      __$$_UserCompanyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String catchPhrase, String bs});
}

/// @nodoc
class __$$_UserCompanyCopyWithImpl<$Res>
    extends _$UserCompanyCopyWithImpl<$Res, _$_UserCompany>
    implements _$$_UserCompanyCopyWith<$Res> {
  __$$_UserCompanyCopyWithImpl(
      _$_UserCompany _value, $Res Function(_$_UserCompany) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? catchPhrase = null,
    Object? bs = null,
  }) {
    return _then(_$_UserCompany(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      bs: null == bs
          ? _value.bs
          : bs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCompany implements _UserCompany {
  const _$_UserCompany(
      {required this.name, required this.catchPhrase, required this.bs});

  factory _$_UserCompany.fromJson(Map<String, dynamic> json) =>
      _$$_UserCompanyFromJson(json);

  @override
  final String name;
  @override
  final String catchPhrase;
  @override
  final String bs;

  @override
  String toString() {
    return 'UserCompany(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCompany &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.bs, bs) || other.bs == bs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, catchPhrase, bs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCompanyCopyWith<_$_UserCompany> get copyWith =>
      __$$_UserCompanyCopyWithImpl<_$_UserCompany>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCompanyToJson(
      this,
    );
  }
}

abstract class _UserCompany implements UserCompany {
  const factory _UserCompany(
      {required final String name,
      required final String catchPhrase,
      required final String bs}) = _$_UserCompany;

  factory _UserCompany.fromJson(Map<String, dynamic> json) =
      _$_UserCompany.fromJson;

  @override
  String get name;
  @override
  String get catchPhrase;
  @override
  String get bs;
  @override
  @JsonKey(ignore: true)
  _$$_UserCompanyCopyWith<_$_UserCompany> get copyWith =>
      throw _privateConstructorUsedError;
}
