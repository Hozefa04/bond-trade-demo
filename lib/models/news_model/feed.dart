import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
class Feed with _$Feed {
  factory Feed({
    String? title,
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
    @JsonKey(name: 'ticker_sentiment') dynamic tickerSentiment,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}
