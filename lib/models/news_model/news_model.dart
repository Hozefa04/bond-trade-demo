import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  factory NewsModel({
    String? items,
    @JsonKey(name: 'sentiment_score_definition')
    String? sentimentScoreDefinition,
    @JsonKey(name: 'relevance_score_definition')
    String? relevanceScoreDefinition,
    List<Feed>? feed,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
