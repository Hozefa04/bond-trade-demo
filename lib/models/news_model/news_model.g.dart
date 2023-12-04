// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      items: json['items'] as String?,
      sentimentScoreDefinition: json['sentiment_score_definition'] as String?,
      relevanceScoreDefinition: json['relevance_score_definition'] as String?,
      feed: (json['feed'] as List<dynamic>?)
          ?.map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'sentiment_score_definition': instance.sentimentScoreDefinition,
      'relevance_score_definition': instance.relevanceScoreDefinition,
      'feed': instance.feed,
    };
