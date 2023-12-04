// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BondDataModel _$BondDataModelFromJson(Map<String, dynamic> json) {
  return _BondDataModel.fromJson(json);
}

/// @nodoc
mixin _$BondDataModel {
  @JsonKey(name: 'bond_id')
  String get bondId => throw _privateConstructorUsedError;
  String get issuer => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'issue_date')
  String get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'maturity_date')
  String get maturityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_rate')
  double get couponRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'face_value')
  int get faceValue => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_rating')
  String get creditRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'issue_size')
  int get issueSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_quantity')
  int get availableQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'govt_guarantee')
  bool get govtGuarantee => throw _privateConstructorUsedError;
  String get security => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BondDataModelCopyWith<BondDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondDataModelCopyWith<$Res> {
  factory $BondDataModelCopyWith(
          BondDataModel value, $Res Function(BondDataModel) then) =
      _$BondDataModelCopyWithImpl<$Res, BondDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bond_id') String bondId,
      String issuer,
      String category,
      @JsonKey(name: 'issue_date') String issueDate,
      @JsonKey(name: 'maturity_date') String maturityDate,
      @JsonKey(name: 'coupon_rate') double couponRate,
      @JsonKey(name: 'face_value') int faceValue,
      int price,
      @JsonKey(name: 'credit_rating') String creditRating,
      @JsonKey(name: 'issue_size') int issueSize,
      @JsonKey(name: 'available_quantity') int availableQuantity,
      @JsonKey(name: 'govt_guarantee') bool govtGuarantee,
      String security});
}

/// @nodoc
class _$BondDataModelCopyWithImpl<$Res, $Val extends BondDataModel>
    implements $BondDataModelCopyWith<$Res> {
  _$BondDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bondId = null,
    Object? issuer = null,
    Object? category = null,
    Object? issueDate = null,
    Object? maturityDate = null,
    Object? couponRate = null,
    Object? faceValue = null,
    Object? price = null,
    Object? creditRating = null,
    Object? issueSize = null,
    Object? availableQuantity = null,
    Object? govtGuarantee = null,
    Object? security = null,
  }) {
    return _then(_value.copyWith(
      bondId: null == bondId
          ? _value.bondId
          : bondId // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String,
      maturityDate: null == maturityDate
          ? _value.maturityDate
          : maturityDate // ignore: cast_nullable_to_non_nullable
              as String,
      couponRate: null == couponRate
          ? _value.couponRate
          : couponRate // ignore: cast_nullable_to_non_nullable
              as double,
      faceValue: null == faceValue
          ? _value.faceValue
          : faceValue // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      creditRating: null == creditRating
          ? _value.creditRating
          : creditRating // ignore: cast_nullable_to_non_nullable
              as String,
      issueSize: null == issueSize
          ? _value.issueSize
          : issueSize // ignore: cast_nullable_to_non_nullable
              as int,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      govtGuarantee: null == govtGuarantee
          ? _value.govtGuarantee
          : govtGuarantee // ignore: cast_nullable_to_non_nullable
              as bool,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BondDataModelImplCopyWith<$Res>
    implements $BondDataModelCopyWith<$Res> {
  factory _$$BondDataModelImplCopyWith(
          _$BondDataModelImpl value, $Res Function(_$BondDataModelImpl) then) =
      __$$BondDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bond_id') String bondId,
      String issuer,
      String category,
      @JsonKey(name: 'issue_date') String issueDate,
      @JsonKey(name: 'maturity_date') String maturityDate,
      @JsonKey(name: 'coupon_rate') double couponRate,
      @JsonKey(name: 'face_value') int faceValue,
      int price,
      @JsonKey(name: 'credit_rating') String creditRating,
      @JsonKey(name: 'issue_size') int issueSize,
      @JsonKey(name: 'available_quantity') int availableQuantity,
      @JsonKey(name: 'govt_guarantee') bool govtGuarantee,
      String security});
}

/// @nodoc
class __$$BondDataModelImplCopyWithImpl<$Res>
    extends _$BondDataModelCopyWithImpl<$Res, _$BondDataModelImpl>
    implements _$$BondDataModelImplCopyWith<$Res> {
  __$$BondDataModelImplCopyWithImpl(
      _$BondDataModelImpl _value, $Res Function(_$BondDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bondId = null,
    Object? issuer = null,
    Object? category = null,
    Object? issueDate = null,
    Object? maturityDate = null,
    Object? couponRate = null,
    Object? faceValue = null,
    Object? price = null,
    Object? creditRating = null,
    Object? issueSize = null,
    Object? availableQuantity = null,
    Object? govtGuarantee = null,
    Object? security = null,
  }) {
    return _then(_$BondDataModelImpl(
      bondId: null == bondId
          ? _value.bondId
          : bondId // ignore: cast_nullable_to_non_nullable
              as String,
      issuer: null == issuer
          ? _value.issuer
          : issuer // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      issueDate: null == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String,
      maturityDate: null == maturityDate
          ? _value.maturityDate
          : maturityDate // ignore: cast_nullable_to_non_nullable
              as String,
      couponRate: null == couponRate
          ? _value.couponRate
          : couponRate // ignore: cast_nullable_to_non_nullable
              as double,
      faceValue: null == faceValue
          ? _value.faceValue
          : faceValue // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      creditRating: null == creditRating
          ? _value.creditRating
          : creditRating // ignore: cast_nullable_to_non_nullable
              as String,
      issueSize: null == issueSize
          ? _value.issueSize
          : issueSize // ignore: cast_nullable_to_non_nullable
              as int,
      availableQuantity: null == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      govtGuarantee: null == govtGuarantee
          ? _value.govtGuarantee
          : govtGuarantee // ignore: cast_nullable_to_non_nullable
              as bool,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BondDataModelImpl implements _BondDataModel {
  _$BondDataModelImpl(
      {@JsonKey(name: 'bond_id') required this.bondId,
      required this.issuer,
      required this.category,
      @JsonKey(name: 'issue_date') required this.issueDate,
      @JsonKey(name: 'maturity_date') required this.maturityDate,
      @JsonKey(name: 'coupon_rate') required this.couponRate,
      @JsonKey(name: 'face_value') required this.faceValue,
      required this.price,
      @JsonKey(name: 'credit_rating') required this.creditRating,
      @JsonKey(name: 'issue_size') required this.issueSize,
      @JsonKey(name: 'available_quantity') required this.availableQuantity,
      @JsonKey(name: 'govt_guarantee') required this.govtGuarantee,
      required this.security});

  factory _$BondDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BondDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'bond_id')
  final String bondId;
  @override
  final String issuer;
  @override
  final String category;
  @override
  @JsonKey(name: 'issue_date')
  final String issueDate;
  @override
  @JsonKey(name: 'maturity_date')
  final String maturityDate;
  @override
  @JsonKey(name: 'coupon_rate')
  final double couponRate;
  @override
  @JsonKey(name: 'face_value')
  final int faceValue;
  @override
  final int price;
  @override
  @JsonKey(name: 'credit_rating')
  final String creditRating;
  @override
  @JsonKey(name: 'issue_size')
  final int issueSize;
  @override
  @JsonKey(name: 'available_quantity')
  final int availableQuantity;
  @override
  @JsonKey(name: 'govt_guarantee')
  final bool govtGuarantee;
  @override
  final String security;

  @override
  String toString() {
    return 'BondDataModel(bondId: $bondId, issuer: $issuer, category: $category, issueDate: $issueDate, maturityDate: $maturityDate, couponRate: $couponRate, faceValue: $faceValue, price: $price, creditRating: $creditRating, issueSize: $issueSize, availableQuantity: $availableQuantity, govtGuarantee: $govtGuarantee, security: $security)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondDataModelImpl &&
            (identical(other.bondId, bondId) || other.bondId == bondId) &&
            (identical(other.issuer, issuer) || other.issuer == issuer) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.maturityDate, maturityDate) ||
                other.maturityDate == maturityDate) &&
            (identical(other.couponRate, couponRate) ||
                other.couponRate == couponRate) &&
            (identical(other.faceValue, faceValue) ||
                other.faceValue == faceValue) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.creditRating, creditRating) ||
                other.creditRating == creditRating) &&
            (identical(other.issueSize, issueSize) ||
                other.issueSize == issueSize) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.govtGuarantee, govtGuarantee) ||
                other.govtGuarantee == govtGuarantee) &&
            (identical(other.security, security) ||
                other.security == security));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bondId,
      issuer,
      category,
      issueDate,
      maturityDate,
      couponRate,
      faceValue,
      price,
      creditRating,
      issueSize,
      availableQuantity,
      govtGuarantee,
      security);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BondDataModelImplCopyWith<_$BondDataModelImpl> get copyWith =>
      __$$BondDataModelImplCopyWithImpl<_$BondDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BondDataModelImplToJson(
      this,
    );
  }
}

abstract class _BondDataModel implements BondDataModel {
  factory _BondDataModel(
      {@JsonKey(name: 'bond_id') required final String bondId,
      required final String issuer,
      required final String category,
      @JsonKey(name: 'issue_date') required final String issueDate,
      @JsonKey(name: 'maturity_date') required final String maturityDate,
      @JsonKey(name: 'coupon_rate') required final double couponRate,
      @JsonKey(name: 'face_value') required final int faceValue,
      required final int price,
      @JsonKey(name: 'credit_rating') required final String creditRating,
      @JsonKey(name: 'issue_size') required final int issueSize,
      @JsonKey(name: 'available_quantity') required final int availableQuantity,
      @JsonKey(name: 'govt_guarantee') required final bool govtGuarantee,
      required final String security}) = _$BondDataModelImpl;

  factory _BondDataModel.fromJson(Map<String, dynamic> json) =
      _$BondDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'bond_id')
  String get bondId;
  @override
  String get issuer;
  @override
  String get category;
  @override
  @JsonKey(name: 'issue_date')
  String get issueDate;
  @override
  @JsonKey(name: 'maturity_date')
  String get maturityDate;
  @override
  @JsonKey(name: 'coupon_rate')
  double get couponRate;
  @override
  @JsonKey(name: 'face_value')
  int get faceValue;
  @override
  int get price;
  @override
  @JsonKey(name: 'credit_rating')
  String get creditRating;
  @override
  @JsonKey(name: 'issue_size')
  int get issueSize;
  @override
  @JsonKey(name: 'available_quantity')
  int get availableQuantity;
  @override
  @JsonKey(name: 'govt_guarantee')
  bool get govtGuarantee;
  @override
  String get security;
  @override
  @JsonKey(ignore: true)
  _$$BondDataModelImplCopyWith<_$BondDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
