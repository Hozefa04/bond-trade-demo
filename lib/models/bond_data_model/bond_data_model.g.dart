// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BondDataModelImpl _$$BondDataModelImplFromJson(Map<String, dynamic> json) =>
    _$BondDataModelImpl(
      bondId: json['bond_id'] as String,
      issuer: json['issuer'] as String,
      category: json['category'] as String,
      issueDate: json['issue_date'] as String,
      maturityDate: json['maturity_date'] as String,
      couponRate: (json['coupon_rate'] as num).toDouble(),
      faceValue: json['face_value'] as int,
      price: json['price'] as int,
      creditRating: json['credit_rating'] as String,
      issueSize: json['issue_size'] as int,
      availableQuantity: json['available_quantity'] as int,
      govtGuarantee: json['govt_guarantee'] as bool,
      security: json['security'] as String,
    );

Map<String, dynamic> _$$BondDataModelImplToJson(_$BondDataModelImpl instance) =>
    <String, dynamic>{
      'bond_id': instance.bondId,
      'issuer': instance.issuer,
      'category': instance.category,
      'issue_date': instance.issueDate,
      'maturity_date': instance.maturityDate,
      'coupon_rate': instance.couponRate,
      'face_value': instance.faceValue,
      'price': instance.price,
      'credit_rating': instance.creditRating,
      'issue_size': instance.issueSize,
      'available_quantity': instance.availableQuantity,
      'govt_guarantee': instance.govtGuarantee,
      'security': instance.security,
    };
