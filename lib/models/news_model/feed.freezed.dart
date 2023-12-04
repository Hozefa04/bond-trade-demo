// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_published')
  String? get timePublished => throw _privateConstructorUsedError;
  List<dynamic>? get authors => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_image')
  String? get bannerImage => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_within_source')
  String? get categoryWithinSource => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_domain')
  String? get sourceDomain => throw _privateConstructorUsedError;
  dynamic get topics => throw _privateConstructorUsedError;
  @JsonKey(name: 'overall_sentiment_score')
  double? get overallSentimentScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'overall_sentiment_label')
  String? get overallSentimentLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticker_sentiment')
  dynamic get tickerSentiment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call(
      {String? title,
      String? url,
      @JsonKey(name: 'time_published') String? timePublished,
      List<dynamic>? authors,
      String? summary,
      @JsonKey(name: 'banner_image') String? bannerImage,
      String? source,
      @JsonKey(name: 'category_within_source') String? categoryWithinSource,
      @JsonKey(name: 'source_domain') String? sourceDomain,
      dynamic topics,
      @JsonKey(name: 'overall_sentiment_score') double? overallSentimentScore,
      @JsonKey(name: 'overall_sentiment_label') String? overallSentimentLabel,
      @JsonKey(name: 'ticker_sentiment') dynamic tickerSentiment});
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? url = freezed,
    Object? timePublished = freezed,
    Object? authors = freezed,
    Object? summary = freezed,
    Object? bannerImage = freezed,
    Object? source = freezed,
    Object? categoryWithinSource = freezed,
    Object? sourceDomain = freezed,
    Object? topics = freezed,
    Object? overallSentimentScore = freezed,
    Object? overallSentimentLabel = freezed,
    Object? tickerSentiment = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      timePublished: freezed == timePublished
          ? _value.timePublished
          : timePublished // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImage: freezed == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryWithinSource: freezed == categoryWithinSource
          ? _value.categoryWithinSource
          : categoryWithinSource // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceDomain: freezed == sourceDomain
          ? _value.sourceDomain
          : sourceDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overallSentimentScore: freezed == overallSentimentScore
          ? _value.overallSentimentScore
          : overallSentimentScore // ignore: cast_nullable_to_non_nullable
              as double?,
      overallSentimentLabel: freezed == overallSentimentLabel
          ? _value.overallSentimentLabel
          : overallSentimentLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      tickerSentiment: freezed == tickerSentiment
          ? _value.tickerSentiment
          : tickerSentiment // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
          _$FeedImpl value, $Res Function(_$FeedImpl) then) =
      __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? url,
      @JsonKey(name: 'time_published') String? timePublished,
      List<dynamic>? authors,
      String? summary,
      @JsonKey(name: 'banner_image') String? bannerImage,
      String? source,
      @JsonKey(name: 'category_within_source') String? categoryWithinSource,
      @JsonKey(name: 'source_domain') String? sourceDomain,
      dynamic topics,
      @JsonKey(name: 'overall_sentiment_score') double? overallSentimentScore,
      @JsonKey(name: 'overall_sentiment_label') String? overallSentimentLabel,
      @JsonKey(name: 'ticker_sentiment') dynamic tickerSentiment});
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? url = freezed,
    Object? timePublished = freezed,
    Object? authors = freezed,
    Object? summary = freezed,
    Object? bannerImage = freezed,
    Object? source = freezed,
    Object? categoryWithinSource = freezed,
    Object? sourceDomain = freezed,
    Object? topics = freezed,
    Object? overallSentimentScore = freezed,
    Object? overallSentimentLabel = freezed,
    Object? tickerSentiment = freezed,
  }) {
    return _then(_$FeedImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      timePublished: freezed == timePublished
          ? _value.timePublished
          : timePublished // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImage: freezed == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryWithinSource: freezed == categoryWithinSource
          ? _value.categoryWithinSource
          : categoryWithinSource // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceDomain: freezed == sourceDomain
          ? _value.sourceDomain
          : sourceDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as dynamic,
      overallSentimentScore: freezed == overallSentimentScore
          ? _value.overallSentimentScore
          : overallSentimentScore // ignore: cast_nullable_to_non_nullable
              as double?,
      overallSentimentLabel: freezed == overallSentimentLabel
          ? _value.overallSentimentLabel
          : overallSentimentLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      tickerSentiment: freezed == tickerSentiment
          ? _value.tickerSentiment
          : tickerSentiment // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedImpl implements _Feed {
  _$FeedImpl(
      {this.title,
      this.url,
      @JsonKey(name: 'time_published') this.timePublished,
      final List<dynamic>? authors,
      this.summary,
      @JsonKey(name: 'banner_image') this.bannerImage,
      this.source,
      @JsonKey(name: 'category_within_source') this.categoryWithinSource,
      @JsonKey(name: 'source_domain') this.sourceDomain,
      this.topics,
      @JsonKey(name: 'overall_sentiment_score') this.overallSentimentScore,
      @JsonKey(name: 'overall_sentiment_label') this.overallSentimentLabel,
      @JsonKey(name: 'ticker_sentiment') this.tickerSentiment})
      : _authors = authors;

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

  @override
  final String? title;
  @override
  final String? url;
  @override
  @JsonKey(name: 'time_published')
  final String? timePublished;
  final List<dynamic>? _authors;
  @override
  List<dynamic>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? summary;
  @override
  @JsonKey(name: 'banner_image')
  final String? bannerImage;
  @override
  final String? source;
  @override
  @JsonKey(name: 'category_within_source')
  final String? categoryWithinSource;
  @override
  @JsonKey(name: 'source_domain')
  final String? sourceDomain;
  @override
  final dynamic topics;
  @override
  @JsonKey(name: 'overall_sentiment_score')
  final double? overallSentimentScore;
  @override
  @JsonKey(name: 'overall_sentiment_label')
  final String? overallSentimentLabel;
  @override
  @JsonKey(name: 'ticker_sentiment')
  final dynamic tickerSentiment;

  @override
  String toString() {
    return 'Feed(title: $title, url: $url, timePublished: $timePublished, authors: $authors, summary: $summary, bannerImage: $bannerImage, source: $source, categoryWithinSource: $categoryWithinSource, sourceDomain: $sourceDomain, topics: $topics, overallSentimentScore: $overallSentimentScore, overallSentimentLabel: $overallSentimentLabel, tickerSentiment: $tickerSentiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.timePublished, timePublished) ||
                other.timePublished == timePublished) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.bannerImage, bannerImage) ||
                other.bannerImage == bannerImage) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.categoryWithinSource, categoryWithinSource) ||
                other.categoryWithinSource == categoryWithinSource) &&
            (identical(other.sourceDomain, sourceDomain) ||
                other.sourceDomain == sourceDomain) &&
            const DeepCollectionEquality().equals(other.topics, topics) &&
            (identical(other.overallSentimentScore, overallSentimentScore) ||
                other.overallSentimentScore == overallSentimentScore) &&
            (identical(other.overallSentimentLabel, overallSentimentLabel) ||
                other.overallSentimentLabel == overallSentimentLabel) &&
            const DeepCollectionEquality()
                .equals(other.tickerSentiment, tickerSentiment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      url,
      timePublished,
      const DeepCollectionEquality().hash(_authors),
      summary,
      bannerImage,
      source,
      categoryWithinSource,
      sourceDomain,
      const DeepCollectionEquality().hash(topics),
      overallSentimentScore,
      overallSentimentLabel,
      const DeepCollectionEquality().hash(tickerSentiment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(
      this,
    );
  }
}

abstract class _Feed implements Feed {
  factory _Feed(
          {final String? title,
          final String? url,
          @JsonKey(name: 'time_published') final String? timePublished,
          final List<dynamic>? authors,
          final String? summary,
          @JsonKey(name: 'banner_image') final String? bannerImage,
          final String? source,
          @JsonKey(name: 'category_within_source')
          final String? categoryWithinSource,
          @JsonKey(name: 'source_domain') final String? sourceDomain,
          final dynamic topics,
          @JsonKey(name: 'overall_sentiment_score')
          final double? overallSentimentScore,
          @JsonKey(name: 'overall_sentiment_label')
          final String? overallSentimentLabel,
          @JsonKey(name: 'ticker_sentiment') final dynamic tickerSentiment}) =
      _$FeedImpl;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

  @override
  String? get title;
  @override
  String? get url;
  @override
  @JsonKey(name: 'time_published')
  String? get timePublished;
  @override
  List<dynamic>? get authors;
  @override
  String? get summary;
  @override
  @JsonKey(name: 'banner_image')
  String? get bannerImage;
  @override
  String? get source;
  @override
  @JsonKey(name: 'category_within_source')
  String? get categoryWithinSource;
  @override
  @JsonKey(name: 'source_domain')
  String? get sourceDomain;
  @override
  dynamic get topics;
  @override
  @JsonKey(name: 'overall_sentiment_score')
  double? get overallSentimentScore;
  @override
  @JsonKey(name: 'overall_sentiment_label')
  String? get overallSentimentLabel;
  @override
  @JsonKey(name: 'ticker_sentiment')
  dynamic get tickerSentiment;
  @override
  @JsonKey(ignore: true)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
