// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_data_model.freezed.dart';
part 'bond_data_model.g.dart';

@freezed
class BondDataModel with _$BondDataModel {
  factory BondDataModel({
    @JsonKey(name: 'bond_id') required String bondId,
    required String issuer,
    required String category,
    @JsonKey(name: 'issue_date') required String issueDate,
    @JsonKey(name: 'maturity_date') required String maturityDate,
    @JsonKey(name: 'coupon_rate') required double couponRate,
    @JsonKey(name: 'face_value') required int faceValue,
    required int price,
    @JsonKey(name: 'credit_rating') required String creditRating,
    @JsonKey(name: 'issue_size') required int issueSize,
    @JsonKey(name: 'available_quantity') required int availableQuantity,
    @JsonKey(name: 'govt_guarantee') required bool govtGuarantee,
    required String security,
  }) = _BondDataModel;

  factory BondDataModel.fromJson(Map<String, dynamic> json) =>
      _$BondDataModelFromJson(json);
}
