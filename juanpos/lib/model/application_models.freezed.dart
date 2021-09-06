// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
class _$UserDetailsTearOff {
  const _$UserDetailsTearOff();

  _UserDetails call({required String id, String? email, String? name}) {
    return _UserDetails(
      id: id,
      email: email,
      name: name,
    );
  }

  UserDetails fromJson(Map<String, Object> json) {
    return UserDetails.fromJson(json);
  }
}

/// @nodoc
const $UserDetails = _$UserDetailsTearOff();

/// @nodoc
mixin _$UserDetails {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res>;
  $Res call({String id, String? email, String? name});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res> implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  final UserDetails _value;
  // ignore: unused_field
  final $Res Function(UserDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserDetailsCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$UserDetailsCopyWith(
          _UserDetails value, $Res Function(_UserDetails) then) =
      __$UserDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? email, String? name});
}

/// @nodoc
class __$UserDetailsCopyWithImpl<$Res> extends _$UserDetailsCopyWithImpl<$Res>
    implements _$UserDetailsCopyWith<$Res> {
  __$UserDetailsCopyWithImpl(
      _UserDetails _value, $Res Function(_UserDetails) _then)
      : super(_value, (v) => _then(v as _UserDetails));

  @override
  _UserDetails get _value => super._value as _UserDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_UserDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetails implements _UserDetails {
  _$_UserDetails({required this.id, this.email, this.name});

  factory _$_UserDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDetailsFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserDetails(id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UserDetailsCopyWith<_UserDetails> get copyWith =>
      __$UserDetailsCopyWithImpl<_UserDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDetailsToJson(this);
  }
}

abstract class _UserDetails implements UserDetails {
  factory _UserDetails({required String id, String? email, String? name}) =
      _$_UserDetails;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$_UserDetails.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDetailsCopyWith<_UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

  _Customer call(
      {required String id,
      required String mobile,
      String? firstName,
      String? lastName,
      String? address}) {
    return _Customer(
      id: id,
      mobile: mobile,
      firstName: firstName,
      lastName: lastName,
      address: address,
    );
  }

  Customer fromJson(Map<String, Object> json) {
    return Customer.fromJson(json);
  }
}

/// @nodoc
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  String get id => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String mobile,
      String? firstName,
      String? lastName,
      String? address});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) then) =
      __$CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String mobile,
      String? firstName,
      String? lastName,
      String? address});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(_Customer _value, $Res Function(_Customer) _then)
      : super(_value, (v) => _then(v as _Customer));

  @override
  _Customer get _value => super._value as _Customer;

  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
  }) {
    return _then(_Customer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  _$_Customer(
      {required this.id,
      required this.mobile,
      this.firstName,
      this.lastName,
      this.address});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerFromJson(json);

  @override
  final String id;
  @override
  final String mobile;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? address;

  @override
  String toString() {
    return 'Customer(id: $id, mobile: $mobile, firstName: $firstName, lastName: $lastName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Customer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerToJson(this);
  }
}

abstract class _Customer implements Customer {
  factory _Customer(
      {required String id,
      required String mobile,
      String? firstName,
      String? lastName,
      String? address}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get mobile => throw _privateConstructorUsedError;
  @override
  String? get firstName => throw _privateConstructorUsedError;
  @override
  String? get lastName => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CustomerCopyWith<_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

Supplier _$SupplierFromJson(Map<String, dynamic> json) {
  return _Supplier.fromJson(json);
}

/// @nodoc
class _$SupplierTearOff {
  const _$SupplierTearOff();

  _Supplier call(
      {required String id,
      required String mobile,
      String? companyName,
      String? contactName,
      String? address,
      String? email,
      String? website}) {
    return _Supplier(
      id: id,
      mobile: mobile,
      companyName: companyName,
      contactName: contactName,
      address: address,
      email: email,
      website: website,
    );
  }

  Supplier fromJson(Map<String, Object> json) {
    return Supplier.fromJson(json);
  }
}

/// @nodoc
const $Supplier = _$SupplierTearOff();

/// @nodoc
mixin _$Supplier {
  String get id => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierCopyWith<Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierCopyWith<$Res> {
  factory $SupplierCopyWith(Supplier value, $Res Function(Supplier) then) =
      _$SupplierCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String mobile,
      String? companyName,
      String? contactName,
      String? address,
      String? email,
      String? website});
}

/// @nodoc
class _$SupplierCopyWithImpl<$Res> implements $SupplierCopyWith<$Res> {
  _$SupplierCopyWithImpl(this._value, this._then);

  final Supplier _value;
  // ignore: unused_field
  final $Res Function(Supplier) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? companyName = freezed,
    Object? contactName = freezed,
    Object? address = freezed,
    Object? email = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SupplierCopyWith<$Res> implements $SupplierCopyWith<$Res> {
  factory _$SupplierCopyWith(_Supplier value, $Res Function(_Supplier) then) =
      __$SupplierCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String mobile,
      String? companyName,
      String? contactName,
      String? address,
      String? email,
      String? website});
}

/// @nodoc
class __$SupplierCopyWithImpl<$Res> extends _$SupplierCopyWithImpl<$Res>
    implements _$SupplierCopyWith<$Res> {
  __$SupplierCopyWithImpl(_Supplier _value, $Res Function(_Supplier) _then)
      : super(_value, (v) => _then(v as _Supplier));

  @override
  _Supplier get _value => super._value as _Supplier;

  @override
  $Res call({
    Object? id = freezed,
    Object? mobile = freezed,
    Object? companyName = freezed,
    Object? contactName = freezed,
    Object? address = freezed,
    Object? email = freezed,
    Object? website = freezed,
  }) {
    return _then(_Supplier(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: companyName == freezed
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Supplier implements _Supplier {
  _$_Supplier(
      {required this.id,
      required this.mobile,
      this.companyName,
      this.contactName,
      this.address,
      this.email,
      this.website});

  factory _$_Supplier.fromJson(Map<String, dynamic> json) =>
      _$_$_SupplierFromJson(json);

  @override
  final String id;
  @override
  final String mobile;
  @override
  final String? companyName;
  @override
  final String? contactName;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final String? website;

  @override
  String toString() {
    return 'Supplier(id: $id, mobile: $mobile, companyName: $companyName, contactName: $contactName, address: $address, email: $email, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Supplier &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.contactName, contactName) ||
                const DeepCollectionEquality()
                    .equals(other.contactName, contactName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality().equals(other.website, website)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(contactName) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(website);

  @JsonKey(ignore: true)
  @override
  _$SupplierCopyWith<_Supplier> get copyWith =>
      __$SupplierCopyWithImpl<_Supplier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SupplierToJson(this);
  }
}

abstract class _Supplier implements Supplier {
  factory _Supplier(
      {required String id,
      required String mobile,
      String? companyName,
      String? contactName,
      String? address,
      String? email,
      String? website}) = _$_Supplier;

  factory _Supplier.fromJson(Map<String, dynamic> json) = _$_Supplier.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get mobile => throw _privateConstructorUsedError;
  @override
  String? get companyName => throw _privateConstructorUsedError;
  @override
  String? get contactName => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get website => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupplierCopyWith<_Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
class _$CategoryTearOff {
  const _$CategoryTearOff();

  _Category call(
      {required String id, required String categoryName, required int color}) {
    return _Category(
      id: id,
      categoryName: categoryName,
      color: color,
    );
  }

  Category fromJson(Map<String, Object> json) {
    return Category.fromJson(json);
  }
}

/// @nodoc
const $Category = _$CategoryTearOff();

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call({String id, String categoryName, int color});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String categoryName, int color});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? color = freezed,
  }) {
    return _then(_Category(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  _$_Category(
      {required this.id, required this.categoryName, required this.color});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryFromJson(json);

  @override
  final String id;
  @override
  final String categoryName;
  @override
  final int color;

  @override
  String toString() {
    return 'Category(id: $id, categoryName: $categoryName, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  factory _Category(
      {required String id,
      required String categoryName,
      required int color}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get categoryName => throw _privateConstructorUsedError;
  @override
  int get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
class _$BusinessTearOff {
  const _$BusinessTearOff();

  _Business call(
      {required String id,
      required String businessName,
      required String country,
      required String city,
      required String taxNO,
      required String pinCode,
      required String mobile,
      required String type}) {
    return _Business(
      id: id,
      businessName: businessName,
      country: country,
      city: city,
      taxNO: taxNO,
      pinCode: pinCode,
      mobile: mobile,
      type: type,
    );
  }

  Business fromJson(Map<String, Object> json) {
    return Business.fromJson(json);
  }
}

/// @nodoc
const $Business = _$BusinessTearOff();

/// @nodoc
mixin _$Business {
  String get id => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get taxNO => throw _privateConstructorUsedError;
  String get pinCode => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String businessName,
      String country,
      String city,
      String taxNO,
      String pinCode,
      String mobile,
      String type});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res> implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  final Business _value;
  // ignore: unused_field
  final $Res Function(Business) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? businessName = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? taxNO = freezed,
    Object? pinCode = freezed,
    Object? mobile = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      taxNO: taxNO == freezed
          ? _value.taxNO
          : taxNO // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$BusinessCopyWith(_Business value, $Res Function(_Business) then) =
      __$BusinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String businessName,
      String country,
      String city,
      String taxNO,
      String pinCode,
      String mobile,
      String type});
}

/// @nodoc
class __$BusinessCopyWithImpl<$Res> extends _$BusinessCopyWithImpl<$Res>
    implements _$BusinessCopyWith<$Res> {
  __$BusinessCopyWithImpl(_Business _value, $Res Function(_Business) _then)
      : super(_value, (v) => _then(v as _Business));

  @override
  _Business get _value => super._value as _Business;

  @override
  $Res call({
    Object? id = freezed,
    Object? businessName = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? taxNO = freezed,
    Object? pinCode = freezed,
    Object? mobile = freezed,
    Object? type = freezed,
  }) {
    return _then(_Business(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      taxNO: taxNO == freezed
          ? _value.taxNO
          : taxNO // ignore: cast_nullable_to_non_nullable
              as String,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business implements _Business {
  _$_Business(
      {required this.id,
      required this.businessName,
      required this.country,
      required this.city,
      required this.taxNO,
      required this.pinCode,
      required this.mobile,
      required this.type});

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$_$_BusinessFromJson(json);

  @override
  final String id;
  @override
  final String businessName;
  @override
  final String country;
  @override
  final String city;
  @override
  final String taxNO;
  @override
  final String pinCode;
  @override
  final String mobile;
  @override
  final String type;

  @override
  String toString() {
    return 'Business(id: $id, businessName: $businessName, country: $country, city: $city, taxNO: $taxNO, pinCode: $pinCode, mobile: $mobile, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Business &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.businessName, businessName) ||
                const DeepCollectionEquality()
                    .equals(other.businessName, businessName)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.taxNO, taxNO) ||
                const DeepCollectionEquality().equals(other.taxNO, taxNO)) &&
            (identical(other.pinCode, pinCode) ||
                const DeepCollectionEquality()
                    .equals(other.pinCode, pinCode)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(businessName) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(taxNO) ^
      const DeepCollectionEquality().hash(pinCode) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$BusinessCopyWith<_Business> get copyWith =>
      __$BusinessCopyWithImpl<_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BusinessToJson(this);
  }
}

abstract class _Business implements Business {
  factory _Business(
      {required String id,
      required String businessName,
      required String country,
      required String city,
      required String taxNO,
      required String pinCode,
      required String mobile,
      required String type}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get businessName => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  String get taxNO => throw _privateConstructorUsedError;
  @override
  String get pinCode => throw _privateConstructorUsedError;
  @override
  String get mobile => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BusinessCopyWith<_Business> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemVariant _$ItemVariantFromJson(Map<String, dynamic> json) {
  return _ItemVariant.fromJson(json);
}

/// @nodoc
class _$ItemVariantTearOff {
  const _$ItemVariantTearOff();

  _ItemVariant call(
      {required String id,
      required String itemId,
      required String productVariantName,
      required double productVariantPrice,
      required double productVariantCost,
      required double? productVariantDiscount,
      required bool isProductVariantDiscount,
      String? productVariantDescription,
      required String productVariantCode,
      required double productVariantTax,
      required bool isProductVariantTax,
      String? internalNote,
      required Map<String, bool> productVariantDiscountType}) {
    return _ItemVariant(
      id: id,
      itemId: itemId,
      productVariantName: productVariantName,
      productVariantPrice: productVariantPrice,
      productVariantCost: productVariantCost,
      productVariantDiscount: productVariantDiscount,
      isProductVariantDiscount: isProductVariantDiscount,
      productVariantDescription: productVariantDescription,
      productVariantCode: productVariantCode,
      productVariantTax: productVariantTax,
      isProductVariantTax: isProductVariantTax,
      internalNote: internalNote,
      productVariantDiscountType: productVariantDiscountType,
    );
  }

  ItemVariant fromJson(Map<String, Object> json) {
    return ItemVariant.fromJson(json);
  }
}

/// @nodoc
const $ItemVariant = _$ItemVariantTearOff();

/// @nodoc
mixin _$ItemVariant {
  String get id => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get productVariantName => throw _privateConstructorUsedError;
  double get productVariantPrice => throw _privateConstructorUsedError;
  double get productVariantCost => throw _privateConstructorUsedError;
  double? get productVariantDiscount => throw _privateConstructorUsedError;
  bool get isProductVariantDiscount => throw _privateConstructorUsedError;
  String? get productVariantDescription => throw _privateConstructorUsedError;
  String get productVariantCode => throw _privateConstructorUsedError;
  double get productVariantTax => throw _privateConstructorUsedError;
  bool get isProductVariantTax => throw _privateConstructorUsedError;
  String? get internalNote => throw _privateConstructorUsedError;
  Map<String, bool> get productVariantDiscountType =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemVariantCopyWith<ItemVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemVariantCopyWith<$Res> {
  factory $ItemVariantCopyWith(
          ItemVariant value, $Res Function(ItemVariant) then) =
      _$ItemVariantCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String itemId,
      String productVariantName,
      double productVariantPrice,
      double productVariantCost,
      double? productVariantDiscount,
      bool isProductVariantDiscount,
      String? productVariantDescription,
      String productVariantCode,
      double productVariantTax,
      bool isProductVariantTax,
      String? internalNote,
      Map<String, bool> productVariantDiscountType});
}

/// @nodoc
class _$ItemVariantCopyWithImpl<$Res> implements $ItemVariantCopyWith<$Res> {
  _$ItemVariantCopyWithImpl(this._value, this._then);

  final ItemVariant _value;
  // ignore: unused_field
  final $Res Function(ItemVariant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? productVariantName = freezed,
    Object? productVariantPrice = freezed,
    Object? productVariantCost = freezed,
    Object? productVariantDiscount = freezed,
    Object? isProductVariantDiscount = freezed,
    Object? productVariantDescription = freezed,
    Object? productVariantCode = freezed,
    Object? productVariantTax = freezed,
    Object? isProductVariantTax = freezed,
    Object? internalNote = freezed,
    Object? productVariantDiscountType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantName: productVariantName == freezed
          ? _value.productVariantName
          : productVariantName // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantPrice: productVariantPrice == freezed
          ? _value.productVariantPrice
          : productVariantPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productVariantCost: productVariantCost == freezed
          ? _value.productVariantCost
          : productVariantCost // ignore: cast_nullable_to_non_nullable
              as double,
      productVariantDiscount: productVariantDiscount == freezed
          ? _value.productVariantDiscount
          : productVariantDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      isProductVariantDiscount: isProductVariantDiscount == freezed
          ? _value.isProductVariantDiscount
          : isProductVariantDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      productVariantDescription: productVariantDescription == freezed
          ? _value.productVariantDescription
          : productVariantDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      productVariantCode: productVariantCode == freezed
          ? _value.productVariantCode
          : productVariantCode // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantTax: productVariantTax == freezed
          ? _value.productVariantTax
          : productVariantTax // ignore: cast_nullable_to_non_nullable
              as double,
      isProductVariantTax: isProductVariantTax == freezed
          ? _value.isProductVariantTax
          : isProductVariantTax // ignore: cast_nullable_to_non_nullable
              as bool,
      internalNote: internalNote == freezed
          ? _value.internalNote
          : internalNote // ignore: cast_nullable_to_non_nullable
              as String?,
      productVariantDiscountType: productVariantDiscountType == freezed
          ? _value.productVariantDiscountType
          : productVariantDiscountType // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
abstract class _$ItemVariantCopyWith<$Res>
    implements $ItemVariantCopyWith<$Res> {
  factory _$ItemVariantCopyWith(
          _ItemVariant value, $Res Function(_ItemVariant) then) =
      __$ItemVariantCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String itemId,
      String productVariantName,
      double productVariantPrice,
      double productVariantCost,
      double? productVariantDiscount,
      bool isProductVariantDiscount,
      String? productVariantDescription,
      String productVariantCode,
      double productVariantTax,
      bool isProductVariantTax,
      String? internalNote,
      Map<String, bool> productVariantDiscountType});
}

/// @nodoc
class __$ItemVariantCopyWithImpl<$Res> extends _$ItemVariantCopyWithImpl<$Res>
    implements _$ItemVariantCopyWith<$Res> {
  __$ItemVariantCopyWithImpl(
      _ItemVariant _value, $Res Function(_ItemVariant) _then)
      : super(_value, (v) => _then(v as _ItemVariant));

  @override
  _ItemVariant get _value => super._value as _ItemVariant;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? productVariantName = freezed,
    Object? productVariantPrice = freezed,
    Object? productVariantCost = freezed,
    Object? productVariantDiscount = freezed,
    Object? isProductVariantDiscount = freezed,
    Object? productVariantDescription = freezed,
    Object? productVariantCode = freezed,
    Object? productVariantTax = freezed,
    Object? isProductVariantTax = freezed,
    Object? internalNote = freezed,
    Object? productVariantDiscountType = freezed,
  }) {
    return _then(_ItemVariant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantName: productVariantName == freezed
          ? _value.productVariantName
          : productVariantName // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantPrice: productVariantPrice == freezed
          ? _value.productVariantPrice
          : productVariantPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productVariantCost: productVariantCost == freezed
          ? _value.productVariantCost
          : productVariantCost // ignore: cast_nullable_to_non_nullable
              as double,
      productVariantDiscount: productVariantDiscount == freezed
          ? _value.productVariantDiscount
          : productVariantDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      isProductVariantDiscount: isProductVariantDiscount == freezed
          ? _value.isProductVariantDiscount
          : isProductVariantDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      productVariantDescription: productVariantDescription == freezed
          ? _value.productVariantDescription
          : productVariantDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      productVariantCode: productVariantCode == freezed
          ? _value.productVariantCode
          : productVariantCode // ignore: cast_nullable_to_non_nullable
              as String,
      productVariantTax: productVariantTax == freezed
          ? _value.productVariantTax
          : productVariantTax // ignore: cast_nullable_to_non_nullable
              as double,
      isProductVariantTax: isProductVariantTax == freezed
          ? _value.isProductVariantTax
          : isProductVariantTax // ignore: cast_nullable_to_non_nullable
              as bool,
      internalNote: internalNote == freezed
          ? _value.internalNote
          : internalNote // ignore: cast_nullable_to_non_nullable
              as String?,
      productVariantDiscountType: productVariantDiscountType == freezed
          ? _value.productVariantDiscountType
          : productVariantDiscountType // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemVariant implements _ItemVariant {
  _$_ItemVariant(
      {required this.id,
      required this.itemId,
      required this.productVariantName,
      required this.productVariantPrice,
      required this.productVariantCost,
      required this.productVariantDiscount,
      required this.isProductVariantDiscount,
      this.productVariantDescription,
      required this.productVariantCode,
      required this.productVariantTax,
      required this.isProductVariantTax,
      this.internalNote,
      required this.productVariantDiscountType});

  factory _$_ItemVariant.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemVariantFromJson(json);

  @override
  final String id;
  @override
  final String itemId;
  @override
  final String productVariantName;
  @override
  final double productVariantPrice;
  @override
  final double productVariantCost;
  @override
  final double? productVariantDiscount;
  @override
  final bool isProductVariantDiscount;
  @override
  final String? productVariantDescription;
  @override
  final String productVariantCode;
  @override
  final double productVariantTax;
  @override
  final bool isProductVariantTax;
  @override
  final String? internalNote;
  @override
  final Map<String, bool> productVariantDiscountType;

  @override
  String toString() {
    return 'ItemVariant(id: $id, itemId: $itemId, productVariantName: $productVariantName, productVariantPrice: $productVariantPrice, productVariantCost: $productVariantCost, productVariantDiscount: $productVariantDiscount, isProductVariantDiscount: $isProductVariantDiscount, productVariantDescription: $productVariantDescription, productVariantCode: $productVariantCode, productVariantTax: $productVariantTax, isProductVariantTax: $isProductVariantTax, internalNote: $internalNote, productVariantDiscountType: $productVariantDiscountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemVariant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.productVariantName, productVariantName) ||
                const DeepCollectionEquality()
                    .equals(other.productVariantName, productVariantName)) &&
            (identical(other.productVariantPrice, productVariantPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productVariantPrice, productVariantPrice)) &&
            (identical(other.productVariantCost, productVariantCost) ||
                const DeepCollectionEquality()
                    .equals(other.productVariantCost, productVariantCost)) &&
            (identical(other.productVariantDiscount, productVariantDiscount) ||
                const DeepCollectionEquality().equals(
                    other.productVariantDiscount, productVariantDiscount)) &&
            (identical(
                    other.isProductVariantDiscount, isProductVariantDiscount) ||
                const DeepCollectionEquality().equals(
                    other.isProductVariantDiscount,
                    isProductVariantDiscount)) &&
            (identical(other.productVariantDescription, productVariantDescription) ||
                const DeepCollectionEquality().equals(
                    other.productVariantDescription,
                    productVariantDescription)) &&
            (identical(other.productVariantCode, productVariantCode) ||
                const DeepCollectionEquality()
                    .equals(other.productVariantCode, productVariantCode)) &&
            (identical(other.productVariantTax, productVariantTax) ||
                const DeepCollectionEquality()
                    .equals(other.productVariantTax, productVariantTax)) &&
            (identical(other.isProductVariantTax, isProductVariantTax) ||
                const DeepCollectionEquality()
                    .equals(other.isProductVariantTax, isProductVariantTax)) &&
            (identical(other.internalNote, internalNote) ||
                const DeepCollectionEquality()
                    .equals(other.internalNote, internalNote)) &&
            (identical(other.productVariantDiscountType,
                    productVariantDiscountType) ||
                const DeepCollectionEquality().equals(
                    other.productVariantDiscountType,
                    productVariantDiscountType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(productVariantName) ^
      const DeepCollectionEquality().hash(productVariantPrice) ^
      const DeepCollectionEquality().hash(productVariantCost) ^
      const DeepCollectionEquality().hash(productVariantDiscount) ^
      const DeepCollectionEquality().hash(isProductVariantDiscount) ^
      const DeepCollectionEquality().hash(productVariantDescription) ^
      const DeepCollectionEquality().hash(productVariantCode) ^
      const DeepCollectionEquality().hash(productVariantTax) ^
      const DeepCollectionEquality().hash(isProductVariantTax) ^
      const DeepCollectionEquality().hash(internalNote) ^
      const DeepCollectionEquality().hash(productVariantDiscountType);

  @JsonKey(ignore: true)
  @override
  _$ItemVariantCopyWith<_ItemVariant> get copyWith =>
      __$ItemVariantCopyWithImpl<_ItemVariant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemVariantToJson(this);
  }
}

abstract class _ItemVariant implements ItemVariant {
  factory _ItemVariant(
      {required String id,
      required String itemId,
      required String productVariantName,
      required double productVariantPrice,
      required double productVariantCost,
      required double? productVariantDiscount,
      required bool isProductVariantDiscount,
      String? productVariantDescription,
      required String productVariantCode,
      required double productVariantTax,
      required bool isProductVariantTax,
      String? internalNote,
      required Map<String, bool> productVariantDiscountType}) = _$_ItemVariant;

  factory _ItemVariant.fromJson(Map<String, dynamic> json) =
      _$_ItemVariant.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get itemId => throw _privateConstructorUsedError;
  @override
  String get productVariantName => throw _privateConstructorUsedError;
  @override
  double get productVariantPrice => throw _privateConstructorUsedError;
  @override
  double get productVariantCost => throw _privateConstructorUsedError;
  @override
  double? get productVariantDiscount => throw _privateConstructorUsedError;
  @override
  bool get isProductVariantDiscount => throw _privateConstructorUsedError;
  @override
  String? get productVariantDescription => throw _privateConstructorUsedError;
  @override
  String get productVariantCode => throw _privateConstructorUsedError;
  @override
  double get productVariantTax => throw _privateConstructorUsedError;
  @override
  bool get isProductVariantTax => throw _privateConstructorUsedError;
  @override
  String? get internalNote => throw _privateConstructorUsedError;
  @override
  Map<String, bool> get productVariantDiscountType =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemVariantCopyWith<_ItemVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required String id,
      String? productName,
      String? productDescription,
      String? productCode,
      String? categoryId}) {
    return _Item(
      id: id,
      productName: productName,
      productDescription: productDescription,
      productCode: productCode,
      categoryId: categoryId,
    );
  }

  Item fromJson(Map<String, Object> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String get id => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get productDescription => throw _privateConstructorUsedError;
  String? get productCode => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String? productName,
      String? productDescription,
      String? productCode,
      String? categoryId});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? productCode = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? productName,
      String? productDescription,
      String? productCode,
      String? categoryId});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? productDescription = freezed,
    Object? productCode = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_Item(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescription: productDescription == freezed
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item(
      {required this.id,
      this.productName,
      this.productDescription,
      this.productCode,
      this.categoryId});

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final String id;
  @override
  final String? productName;
  @override
  final String? productDescription;
  @override
  final String? productCode;
  @override
  final String? categoryId;

  @override
  String toString() {
    return 'Item(id: $id, productName: $productName, productDescription: $productDescription, productCode: $productCode, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productDescription, productDescription) ||
                const DeepCollectionEquality()
                    .equals(other.productDescription, productDescription)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productDescription) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(categoryId);

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  factory _Item(
      {required String id,
      String? productName,
      String? productDescription,
      String? productCode,
      String? categoryId}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get productName => throw _privateConstructorUsedError;
  @override
  String? get productDescription => throw _privateConstructorUsedError;
  @override
  String? get productCode => throw _privateConstructorUsedError;
  @override
  String? get categoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
