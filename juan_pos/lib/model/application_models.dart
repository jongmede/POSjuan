import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
abstract class User with _$User{
  factory User({
    required String id,
    String? email,
    String? name
}) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@freezed
abstract class Customer with _$Customer{
  factory Customer({
    required String mobile,
    String? firstName,
    String? lastName,
    String? address

  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
abstract class Supplier with _$Supplier{
  factory Supplier({
    required String mobile,
    String? companyName,
    String? contactName,
    String? address

  }) = _Supplier;

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
}