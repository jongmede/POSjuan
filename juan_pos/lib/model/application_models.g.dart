// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String,
    email: json['email'] as String?,
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
    };

_$_Customer _$_$_CustomerFromJson(Map<String, dynamic> json) {
  return _$_Customer(
    mobile: json['mobile'] as String,
    firstName: json['firstName'] as String?,
    lastName: json['lastName'] as String?,
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
    };

_$_Supplier _$_$_SupplierFromJson(Map<String, dynamic> json) {
  return _$_Supplier(
    mobile: json['mobile'] as String,
    companyName: json['companyName'] as String?,
    contactName: json['contactName'] as String?,
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_SupplierToJson(_$_Supplier instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'companyName': instance.companyName,
      'contactName': instance.contactName,
      'address': instance.address,
    };
