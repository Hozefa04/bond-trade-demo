// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  String? get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentiment_score_definition')
  String? get sentimentScoreDefinition => throw _privateConstructorUsedError;
  @JsonKey(name: 'relevance_score_definition')
  String? get relevanceScoreDefinition => throw _privateConstructorUsedError;
  List<Feed>? get feed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {String? items,
      @JsonKey(name: 'sentiment_score_definition')
      String? sentimentScoreDefinition,
      @JsonKey(name: 'relevance_score_definition')
      String? relevanceScoreDefinition,
      List<Feed>? feed});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? sentimentScoreDefinition = freezed,
    Object? relevanceScoreDefinition = freezed,
    Object? feed = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentScoreDefinition: freezed == sentimentScoreDefinition
          ? _value.sentimentScoreDefinition
          : sentimentScoreDefinition // ignore: cast_nullable_to_non_nullable
              as String?,
      relevanceScoreDefinition: freezed == relevanceScoreDefinition
          ? _value.relevanceScoreDefinition
          : relevanceScoreDefinition // ignore: cast_nullable_to_non_nullable
              as String?,
      feed: freezed == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<Feed>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? items,
      @JsonKey(name: 'sentiment_score_definition')
      String? sentimentScoreDefinition,
      @JsonKey(name: 'relevance_score_definition')
      String? relevanceScoreDefinition,
      List<Feed>? feed});
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? sentimentScoreDefinition = freezed,
    Object? relevanceScoreDefinition = freezed,
    Object? feed = freezed,
  }) {
    return _then(_$NewsModelImpl(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentScoreDefinition: freezed == sentimentScoreDefinition
          ? _value.sentimentScoreDefinition
          : sentimentScoreDefinition // ignore: cast_nullable_to_non_nullable
              as String?,
      relevanceScoreDefinition: freezed == relevanceScoreDefinition
          ? _value.relevanceScoreDefinition
          : relevanceScoreDefinition // ignore: cast_nullable_to_non_nullable
              as String?,
      feed: freezed == feed
          ? _value._feed
          : feed // ignore: cast_nullable_to_non_nullable
              as List<Feed>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl implements _NewsModel {
  _$NewsModelImpl(
      {this.items,
      @JsonKey(name: 'sentiment_score_definition')
      this.sentimentScoreDefinition,
      @JsonKey(name: 'relevance_score_definition')
      this.relevanceScoreDefinition,
      final List<Feed>? feed})
      : _feed = feed;

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  @override
  final String? items;
  @override
  @JsonKey(name: 'sentiment_score_definition')
  final String? sentimentScoreDefinition;
  @override
  @JsonKey(name: 'relevance_score_definition')
  final String? relevanceScoreDefinition;
  final List<Feed>? _feed;
  @override
  List<Feed>? get feed {
    final value = _feed;
    if (value == null) return null;
    if (_feed is EqualUnmodifiableListView) return _feed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsModel(items: $items, sentimentScoreDefinition: $sentimentScoreDefinition, relevanceScoreDefinition: $relevanceScoreDefinition, feed: $feed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
            (identical(other.items, items) || other.items == items) &&
            (identical(
                    other.sentimentScoreDefinition, sentimentScoreDefinition) ||
                other.sentimentScoreDefinition == sentimentScoreDefinition) &&
            (identical(
                    other.relevanceScoreDefinition, relevanceScoreDefinition) ||
                other.relevanceScoreDefinition == relevanceScoreDefinition) &&
            const DeepCollectionEquality().equals(other._feed, _feed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, items, sentimentScoreDefinition,
      relevanceScoreDefinition, const DeepCollectionEquality().hash(_feed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  factory _NewsModel(
      {final String? items,
      @JsonKey(name: 'sentiment_score_definition')
      final String? sentimentScoreDefinition,
      @JsonKey(name: 'relevance_score_definition')
      final String? relevanceScoreDefinition,
      final List<Feed>? feed}) = _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  String? get items;
  @override
  @JsonKey(name: 'sentiment_score_definition')
  String? get sentimentScoreDefinition;
  @override
  @JsonKey(name: 'relevance_score_definition')
  String? get relevanceScoreDefinition;
  @override
  List<Feed>? get feed;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
