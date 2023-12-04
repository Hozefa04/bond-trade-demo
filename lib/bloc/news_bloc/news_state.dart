part of 'news_bloc.dart';

sealed class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object?> get props => [];
}

final class NewsInitial extends NewsState {
  const NewsInitial();

  @override
  List<Object?> get props => [];
}

final class NewsLoadingState extends NewsState {
  const NewsLoadingState();

  @override
  List<Object?> get props => [];
}

final class NewsLoadedState extends NewsState {
  final NewsModel news;
  const NewsLoadedState(this.news);

  @override
  List<Object?> get props => [news];
}

final class NewsLoadErrorState extends NewsState {
  final String error;
  const NewsLoadErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
