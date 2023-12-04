import 'package:bond_trade_demo/bloc/news_bloc/news_bloc.dart';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/page_utils.dart';
import 'package:bond_trade_demo/utils/status_dialogs.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<NewsBloc>(context).add(const LoadNewsEvent());
          },
          color: AppColors.primaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 22),
              Text(
                AppStrings.financialNews,
                style: AppStyle.titleStyle,
              ),
              const SizedBox(height: 22),
              const NewsListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<NewsBloc, NewsState>(
        listener: (context, state) {
          if (state is NewsLoadErrorState) {
            PageUtils.pop(context);
            showErrorDialog(context, state.error);
          }
          if (state is NewsLoadingState) {
            showProgressDialog(context);
          }
          if (state is NewsLoadedState) {
            PageUtils.pop(context);
          }
        },
        builder: (context, state) {
          if (state is NewsLoadedState) {
            return ListView.builder(
              itemCount: state.news.feed?.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      if (!await launchUrl(
                            Uri.parse(state.news.feed?[index].url ?? ""),
                            mode: LaunchMode.externalApplication,
                          ) &&
                          context.mounted) {
                        showErrorDialog(context, AppStrings.cannotLaunchUrl);
                      }
                    },
                    splashColor: Colors.transparent,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  state.news.feed?[index].bannerImage ?? "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    state.news.feed?[index].title ?? "",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppStyle.mediumStyle,
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "Source: ${state.news.feed?[index].source}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppStyle.smallStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
