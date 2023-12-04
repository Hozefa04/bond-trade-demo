// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      title: json['title'] as String?,
      url: json['url'] as String?,
      timePublished: json['time_published'] as String?,
      authors: json['authors'] as List<dynamic>?,
      summary: json['summary'] as String?,
      bannerImage: json['banner_image'] as String?,
      source: json['source'] as String?,
      categoryWithinSource: json['category_within_source'] as String?,
      sourceDomain: json['source_domain'] as String?,
      topics: json['topics'],
      overallSentimentScore:
          (json['overall_sentiment_score'] as num?)?.toDouble(),
      overallSentimentLabel: json['overall_sentiment_label'] as String?,
      tickerSentiment: json['ticker_sentiment'],
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'time_published': instance.timePublished,
      'authors': instance.authors,
      'summary': instance.summary,
      'banner_image': instance.bannerImage,
      'source': instance.source,
      'category_within_source': instance.categoryWithinSource,
      'source_domain': instance.sourceDomain,
      'topics': instance.topics,
      'overall_sentiment_score': instance.overallSentimentScore,
      'overall_sentiment_label': instance.overallSentimentLabel,
      'ticker_sentiment': instance.tickerSentiment,
    };
