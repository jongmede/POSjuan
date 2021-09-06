// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetails _$_$_UserDetailsFromJson(Map<String, dynamic> json) {
  return _$_UserDetails(
    id: json['id'] as String,
    email: json['email'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_UserDetailsToJson(_$_UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
    };

_$_Customer _$_$_CustomerFromJson(Map<String, dynamic> json) {
  return _$_Customer(
    id: json['id'] as String,
    mobile: json['mobile'] as String,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobile,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
    };

_$_Supplier _$_$_SupplierFromJson(Map<String, dynamic> json) {
  return _$_Supplier(
    id: json['id'] as String,
    mobile: json['mobile'] as String,
    companyName: json['companyName'] as String?,
    contactName: json['contactName'] as String?,
    address: json['address'] as String?,
    email: json['email'] as String?,
    website: json['website'] as String?,
  );
}

Map<String, dynamic> _$_$_SupplierToJson(_$_Supplier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobile,
      'companyName': instance.companyName,
      'contactName': instance.contactName,
      'address': instance.address,
      'email': instance.email,
      'website': instance.website,
    };

_$_Category _$_$_CategoryFromJson(Map<String, dynamic> json) {
  return _$_Category(
    id: json['id'] as String,
    categoryName: json['categoryName'] as String,
    color: json['color'] as int,
  );
}

Map<String, dynamic> _$_$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'color': instance.color,
    };

_$_Business _$_$_BusinessFromJson(Map<String, dynamic> json) {
  return _$_Business(
    id: json['id'] as String,
    businessName: json['businessName'] as String,
    country: json['country'] as String,
    city: json['city'] as String,
    taxNO: json['taxNO'] as String,
    pinCode: json['pinCode'] as String,
    mobile: json['mobile'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'businessName': instance.businessName,
      'country': instance.country,
      'city': instance.city,
      'taxNO': instance.taxNO,
      'pinCode': instance.pinCode,
      'mobile': instance.mobile,
      'type': instance.type,
    };

_$_ItemVariant _$_$_ItemVariantFromJson(Map<String, dynamic> json) {
  return _$_ItemVariant(
    id: json['id'] as String,
    itemId: json['itemId'] as String,
    productVariantName: json['productVariantName'] as String,
    productVariantPrice: (json['productVariantPrice'] as num).toDouble(),
    productVariantCost: (json['productVariantCost'] as num).toDouble(),
    productVariantDiscount:
        (json['productVariantDiscount'] as num?)?.toDouble(),
    isProductVariantDiscount: json['isProductVariantDiscount'] as bool,
    productVariantDescription: json['productVariantDescription'] as String?,
    productVariantCode: json['productVariantCode'] as String,
    productVariantTax: (json['productVariantTax'] as num).toDouble(),
    isProductVariantTax: json['isProductVariantTax'] as bool,
    internalNote: json['internalNote'] as String?,
    productVariantDiscountType:
        Map<String, bool>.from(json['productVariantDiscountType'] as Map),
  );
}

Map<String, dynamic> _$_$_ItemVariantToJson(_$_ItemVariant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemId': instance.itemId,
      'productVariantName': instance.productVariantName,
      'productVariantPrice': instance.productVariantPrice,
      'productVariantCost': instance.productVariantCost,
      'productVariantDiscount': instance.productVariantDiscount,
      'isProductVariantDiscount': instance.isProductVariantDiscount,
      'productVariantDescription': instance.productVariantDescription,
      'productVariantCode': instance.productVariantCode,
      'productVariantTax': instance.productVariantTax,
      'isProductVariantTax': instance.isProductVariantTax,
      'internalNote': instance.internalNote,
      'productVariantDiscountType': instance.productVariantDiscountType,
    };

_$_Item _$_$_ItemFromJson(Map<String, dynamic> json) {
  return _$_Item(
    id: json['id'] as String,
    productName: json['productName'] as String?,
    productDescription: json['productDescription'] as String?,
    productCode: json['productCode'] as String?,
    categoryId: json['categoryId'] as String?,
  );
}

Map<String, dynamic> _$_$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productCode': instance.productCode,
      'categoryId': instance.categoryId,
    };
