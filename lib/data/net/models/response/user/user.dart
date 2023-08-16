import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class UserContainer with _$UserContainer {
  const factory UserContainer({
    @Default(<User>[]) List<User> users,
  }) = _UserContainer;

  factory UserContainer.fromJson(Map<String, dynamic> json) =>
      _$UserContainerFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String username,
    required String email,
    required String phone,
    required String website,
    required UserAddress address,
    required UserCompany company,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserAddress with _$UserAddress {
  const factory UserAddress({
    required String street,
    required String suite,
    required String city,
    required String zipcode,
    UserAddressGeo? geo,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, dynamic> json) =>
      _$UserAddressFromJson(json);
}

@freezed
class UserAddressGeo with _$UserAddressGeo {
  const factory UserAddressGeo({
    required String lat,
    required String lng,
  }) = _UserAddressGeo;

  factory UserAddressGeo.fromJson(Map<String, dynamic> json) =>
      _$UserAddressGeoFromJson(json);
}

@freezed
class UserCompany with _$UserCompany {
  const factory UserCompany({
    required String name,
    required String catchPhrase,
    required String bs,
  }) = _UserCompany;

  factory UserCompany.fromJson(Map<String, dynamic> json) =>
      _$UserCompanyFromJson(json);
}
