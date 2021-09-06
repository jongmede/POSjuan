import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
abstract class UserDetails with _$UserDetails {
  factory UserDetails({required String id, String? email, String? name}) =
      _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}

@freezed
abstract class Customer with _$Customer {
  factory Customer(
      {required String id,
      required String mobile,
      String? firstName,
      String? lastName,
      String? address}) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@freezed
abstract class Supplier with _$Supplier {
  factory Supplier(
      {required String id,
      required String mobile,
      String? companyName,
      String? contactName,
      String? address,
      String? email,
      String? website}) = _Supplier;

  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
}

@freezed
abstract class Category with _$Category {
  factory Category({
    required String id,
    required String categoryName,
    required int color,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class Business with _$Business {
  factory Business({
    required String id,
    required String businessName,
    required String country,
    required String city,
    required String taxNO,
    required String pinCode,
    required String mobile,
    required String type,
  }) = _Business;

  factory Business.fromJson(Map<String, dynamic> json) =>
      _$BusinessFromJson(json);
}

@freezed
abstract class ItemVariant with _$ItemVariant {
  factory ItemVariant({
    required String id,
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
    required Map<String, bool> productVariantDiscountType,
  }) = _ItemVariant;

  factory ItemVariant.fromJson(Map<String, dynamic> json) =>
      _$ItemVariantFromJson(json);
}

@freezed
abstract class Item with _$Item {
  factory Item({
    required String id,
    String? productName,
    String? productDescription,
    String? productCode,
    String? categoryId,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
