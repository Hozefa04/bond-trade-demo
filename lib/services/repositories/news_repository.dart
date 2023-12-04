import 'package:bond_trade_demo/models/api_result/api_result.dart';
import 'package:bond_trade_demo/models/network_exceptions/network_exceptions.dart';
import 'package:bond_trade_demo/models/news_model/news_model.dart';
import 'package:bond_trade_demo/services/news_api/api_constants.dart';
import 'package:bond_trade_demo/services/news_api/news_api_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsRepository {
  static NewsRepository? _instance;
  NewsApiClient npsApiClient = NewsApiClient.instance;

  NewsRepository._();

  static NewsRepository get instance {
    _instance ??= NewsRepository._();
    return _instance!;
  }

  // Get account details of the user
  Future<ApiResult<NewsModel>> getNews() async {
    try {
      final apiKey = dotenv.get('NEWS_API_KEY');
      final response = await npsApiClient.get<Map<String, dynamic>>(
        "${NpsApiConstants.query}?function=NEWS_SENTIMENT&tickers=AAPL&apikey=$apiKey",
      );
      final responseData = response.data;
      if (responseData != null) {
        final news = NewsModel.fromJson(responseData);
        return ApiResult.success(news);
      } else {
        return const ApiResult.failure("Something went wrong");
      }
    } on Exception catch (error, _) {
      return ApiResult.failure(NetworkExceptions.getErrorMessage(error));
    }
  }
}
