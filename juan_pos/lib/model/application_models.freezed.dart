// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({required String id, String? email, String? name}) {
    return _User(
      id: id,
      email: email,
      name: name,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String id, String? email, String? name});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

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
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? email, String? name});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_User(
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
class _$_User implements _User {
  _$_User({required this.id, this.email, this.name});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? name;

  @override
  String toString() {
    return 'User(id: $id, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
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
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User({required String id, String? email, String? name}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

  _Customer call(
      {required String mobile,
      String? firstName,
      String? lastName,
      String? address}) {
    return _Customer(
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
      {String mobile, String? firstName, String? lastName, String? address});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? mobile = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
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
      {String mobile, String? firstName, String? lastName, String? address});
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
    Object? mobile = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
  }) {
    return _then(_Customer(
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
      {required this.mobile, this.firstName, this.lastName, this.address});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerFromJson(json);

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
    return 'Customer(mobile: $mobile, firstName: $firstName, lastName: $lastName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Customer &&
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
      {required String mobile,
      String? firstName,
      String? lastName,
      String? address}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

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
      {required String mobile,
      String? companyName,
      String? contactName,
      String? address}) {
    return _Supplier(
      mobile: mobile,
      companyName: companyName,
      contactName: contactName,
      address: address,
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
  String get mobile => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get contactName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

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
      {String mobile,
      String? companyName,
      String? contactName,
      String? address});
}

/// @nodoc
class _$SupplierCopyWithImpl<$Res> implements $SupplierCopyWith<$Res> {
  _$SupplierCopyWithImpl(this._value, this._then);

  final Supplier _value;
  // ignore: unused_field
  final $Res Function(Supplier) _then;

  @override
  $Res call({
    Object? mobile = freezed,
    Object? companyName = freezed,
    Object? contactName = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$SupplierCopyWith<$Res> implements $SupplierCopyWith<$Res> {
  factory _$SupplierCopyWith(_Supplier value, $Res Function(_Supplier) then) =
      __$SupplierCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mobile,
      String? companyName,
      String? contactName,
      String? address});
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
    Object? mobile = freezed,
    Object? companyName = freezed,
    Object? contactName = freezed,
    Object? address = freezed,
  }) {
    return _then(_Supplier(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Supplier implements _Supplier {
  _$_Supplier(
      {required this.mobile, this.companyName, this.contactName, this.address});

  factory _$_Supplier.fromJson(Map<String, dynamic> json) =>
      _$_$_SupplierFromJson(json);

  @override
  final String mobile;
  @override
  final String? companyName;
  @override
  final String? contactName;
  @override
  final String? address;

  @override
  String toString() {
    return 'Supplier(mobile: $mobile, companyName: $companyName, contactName: $contactName, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Supplier &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.contactName, contactName) ||
                const DeepCollectionEquality()
                    .equals(other.contactName, contactName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(contactName) ^
      const DeepCollectionEquality().hash(address);

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
      {required String mobile,
      String? companyName,
      String? contactName,
      String? address}) = _$_Supplier;

  factory _Supplier.fromJson(Map<String, dynamic> json) = _$_Supplier.fromJson;

  @override
  String get mobile => throw _privateConstructorUsedError;
  @override
  String? get companyName => throw _privateConstructorUsedError;
  @override
  String? get contactName => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SupplierCopyWith<_Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}
