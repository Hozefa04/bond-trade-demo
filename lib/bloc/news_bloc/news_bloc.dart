import 'package:bloc/bloc.dart';
import 'package:bond_trade_demo/models/news_model/news_model.dart';
import 'package:bond_trade_demo/services/repositories/news_repository.dart';
import 'package:equatable/equatable.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository = NewsRepository.instance;
  NewsBloc() : super(const NewsInitial()) {
    on<LoadNewsEvent>(_loadNews);
  }

  Future<void> _loadNews(LoadNewsEvent event, Emitter<NewsState> emit) async {
    emit(const NewsLoadingState());
    final apiResult = await _newsRepository.getNews();

    apiResult.when(
      success: (news) {
        emit(NewsLoadedState(news));
      },
      failure: (error) {
        emit(NewsLoadErrorState(error));
      },
    );
  }
}
