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
      required String prodID,
      required String name,
      required double price,
      required double cost,
      required double discount,
      String? description,
      required String prodCode,
      String? image,
      String? inventoryLink,
      required bool discount_SC,
      required bool discount_PWD,
      required bool discount_Spl}) {
    return _ItemVariant(
      id: id,
      prodID: prodID,
      name: name,
      price: price,
      cost: cost,
      discount: discount,
      description: description,
      prodCode: prodCode,
      image: image,
      inventoryLink: inventoryLink,
      discount_SC: discount_SC,
      discount_PWD: discount_PWD,
      discount_Spl: discount_Spl,
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
  String get prodID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get prodCode => throw _privateConstructorUsedError;
  String? get image =>
      throw _privateConstructorUsedError; // required double productVariantTax,
// required bool isProductVariantTax,
// String? internalNote,
  String? get inventoryLink => throw _privateConstructorUsedError;
  bool get discount_SC => throw _privateConstructorUsedError;
  bool get discount_PWD => throw _privateConstructorUsedError;
  bool get discount_Spl => throw _privateConstructorUsedError;

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
      String prodID,
      String name,
      double price,
      double cost,
      double discount,
      String? description,
      String prodCode,
      String? image,
      String? inventoryLink,
      bool discount_SC,
      bool discount_PWD,
      bool discount_Spl});
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
    Object? prodID = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? description = freezed,
    Object? prodCode = freezed,
    Object? image = freezed,
    Object? inventoryLink = freezed,
    Object? discount_SC = freezed,
    Object? discount_PWD = freezed,
    Object? discount_Spl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      prodID: prodID == freezed
          ? _value.prodID
          : prodID // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      prodCode: prodCode == freezed
          ? _value.prodCode
          : prodCode // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryLink: inventoryLink == freezed
          ? _value.inventoryLink
          : inventoryLink // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_SC: discount_SC == freezed
          ? _value.discount_SC
          : discount_SC // ignore: cast_nullable_to_non_nullable
              as bool,
      discount_PWD: discount_PWD == freezed
          ? _value.discount_PWD
          : discount_PWD // ignore: cast_nullable_to_non_nullable
              as bool,
      discount_Spl: discount_Spl == freezed
          ? _value.discount_Spl
          : discount_Spl // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String prodID,
      String name,
      double price,
      double cost,
      double discount,
      String? description,
      String prodCode,
      String? image,
      String? inventoryLink,
      bool discount_SC,
      bool discount_PWD,
      bool discount_Spl});
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
    Object? prodID = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? discount = freezed,
    Object? description = freezed,
    Object? prodCode = freezed,
    Object? image = freezed,
    Object? inventoryLink = freezed,
    Object? discount_SC = freezed,
    Object? discount_PWD = freezed,
    Object? discount_Spl = freezed,
  }) {
    return _then(_ItemVariant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      prodID: prodID == freezed
          ? _value.prodID
          : prodID // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      prodCode: prodCode == freezed
          ? _value.prodCode
          : prodCode // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      inventoryLink: inventoryLink == freezed
          ? _value.inventoryLink
          : inventoryLink // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_SC: discount_SC == freezed
          ? _value.discount_SC
          : discount_SC // ignore: cast_nullable_to_non_nullable
              as bool,
      discount_PWD: discount_PWD == freezed
          ? _value.discount_PWD
          : discount_PWD // ignore: cast_nullable_to_non_nullable
              as bool,
      discount_Spl: discount_Spl == freezed
          ? _value.discount_Spl
          : discount_Spl // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemVariant implements _ItemVariant {
  _$_ItemVariant(
      {required this.id,
      required this.prodID,
      required this.name,
      required this.price,
      required this.cost,
      required this.discount,
      this.description,
      required this.prodCode,
      this.image,
      this.inventoryLink,
      required this.discount_SC,
      required this.discount_PWD,
      required this.discount_Spl});

  factory _$_ItemVariant.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemVariantFromJson(json);

  @override
  final String id;
  @override
  final String prodID;
  @override
  final String name;
  @override
  final double price;
  @override
  final double cost;
  @override
  final double discount;
  @override
  final String? description;
  @override
  final String prodCode;
  @override
  final String? image;
  @override // required double productVariantTax,
// required bool isProductVariantTax,
// String? internalNote,
  final String? inventoryLink;
  @override
  final bool discount_SC;
  @override
  final bool discount_PWD;
  @override
  final bool discount_Spl;

  @override
  String toString() {
    return 'ItemVariant(id: $id, prodID: $prodID, name: $name, price: $price, cost: $cost, discount: $discount, description: $description, prodCode: $prodCode, image: $image, inventoryLink: $inventoryLink, discount_SC: $discount_SC, discount_PWD: $discount_PWD, discount_Spl: $discount_Spl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemVariant &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.prodID, prodID) ||
                const DeepCollectionEquality().equals(other.prodID, prodID)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.prodCode, prodCode) ||
                const DeepCollectionEquality()
                    .equals(other.prodCode, prodCode)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.inventoryLink, inventoryLink) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryLink, inventoryLink)) &&
            (identical(other.discount_SC, discount_SC) ||
                const DeepCollectionEquality()
                    .equals(other.discount_SC, discount_SC)) &&
            (identical(other.discount_PWD, discount_PWD) ||
                const DeepCollectionEquality()
                    .equals(other.discount_PWD, discount_PWD)) &&
            (identical(other.discount_Spl, discount_Spl) ||
                const DeepCollectionEquality()
                    .equals(other.discount_Spl, discount_Spl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(prodID) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(prodCode) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(inventoryLink) ^
      const DeepCollectionEquality().hash(discount_SC) ^
      const DeepCollectionEquality().hash(discount_PWD) ^
      const DeepCollectionEquality().hash(discount_Spl);

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
      required String prodID,
      required String name,
      required double price,
      required double cost,
      required double discount,
      String? description,
      required String prodCode,
      String? image,
      String? inventoryLink,
      required bool discount_SC,
      required bool discount_PWD,
      required bool discount_Spl}) = _$_ItemVariant;

  factory _ItemVariant.fromJson(Map<String, dynamic> json) =
      _$_ItemVariant.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get prodID => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  double get cost => throw _privateConstructorUsedError;
  @override
  double get discount => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String get prodCode => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override // required double productVariantTax,
// required bool isProductVariantTax,
// String? internalNote,
  String? get inventoryLink => throw _privateConstructorUsedError;
  @override
  bool get discount_SC => throw _privateConstructorUsedError;
  @override
  bool get discount_PWD => throw _privateConstructorUsedError;
  @override
  bool get discount_Spl => throw _privateConstructorUsedError;
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
      String? description,
      String? productCode,
      String? category}) {
    return _Item(
      id: id,
      productName: productName,
      description: description,
      productCode: productCode,
      category: category,
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
  String? get description => throw _privateConstructorUsedError;
  String? get productCode => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;

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
      String? description,
      String? productCode,
      String? category});
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
    Object? description = freezed,
    Object? productCode = freezed,
    Object? category = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
      String? description,
      String? productCode,
      String? category});
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
    Object? description = freezed,
    Object? productCode = freezed,
    Object? category = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
      this.description,
      this.productCode,
      this.category});

  factory _$_Item.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemFromJson(json);

  @override
  final String id;
  @override
  final String? productName;
  @override
  final String? description;
  @override
  final String? productCode;
  @override
  final String? category;

  @override
  String toString() {
    return 'Item(id: $id, productName: $productName, description: $description, productCode: $productCode, category: $category)';
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
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(category);

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
      String? description,
      String? productCode,
      String? category}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get productName => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get productCode => throw _privateConstructorUsedError;
  @override
  String? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}
