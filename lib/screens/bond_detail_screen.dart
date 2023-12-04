import 'package:bond_trade_demo/bloc/bond_details_bloc/bond_details_bloc.dart';
import 'package:bond_trade_demo/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:bond_trade_demo/models/bond_data_model/bond_data_model.dart';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/extras.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:bond_trade_demo/widgets/app_button.dart';
import 'package:bond_trade_demo/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

class BondDetailsScreen extends StatelessWidget {
  final BondDataModel bond;
  const BondDetailsScreen({
    super.key,
    required this.bond,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          AppStrings.bondDetails,
          style: AppStyle.largeStyle,
        ),
        actions: [
          BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {
              if (state is WishlistLoadedState) {
                return IconButton(
                  onPressed: () {
                    BlocProvider.of<WishlistBloc>(context)
                        .add(ManageWishlistEvent(bond));
                  },
                  icon: Icon(
                    state.bondsList.contains(bond)
                        ? HeroIcons.bookmark
                        : FontAwesome.bookmark,
                    color: AppColors.primaryColor,
                    size: 22,
                  ),
                );
              }
              return IconButton(
                onPressed: () {
                  BlocProvider.of<WishlistBloc>(context)
                      .add(ManageWishlistEvent(bond));
                },
                icon: Icon(
                  FontAwesome.bookmark,
                  color: AppColors.primaryColor,
                  size: 22,
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppColors.lightColor,
              padding: const EdgeInsets.only(
                top: kTextTabBarHeight + 42,
                bottom: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    child: BlocBuilder<BondDetailsBloc, BondDetailsState>(
                      buildWhen: (previous, current) =>
                          current is YearChangedState,
                      builder: (context, state) {
                        if (state is YearChangedState) {
                          return const ChartWidget();
                        }
                        return const ChartWidget();
                      },
                    ),
                  ),
                  const FilterTiles(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    "${bond.couponRate}% ${bond.issuer}",
                    style: AppStyle.largeStyle,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppStrings.rating,
                    style: AppStyle.largeStyle.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            bond.creditRating,
                            textAlign: TextAlign.center,
                            style: AppStyle.titleStyle.copyWith(
                              color: getColorBasedOnRating(bond.creditRating),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RatingBox(color: AppColors.greenColor),
                              const SizedBox(width: 4),
                              RatingBox(color: AppColors.blueColor),
                              const SizedBox(width: 4),
                              RatingBox(color: AppColors.orangeColor),
                              const SizedBox(width: 4),
                              RatingBox(color: AppColors.errorColor),
                              const SizedBox(width: 4),
                              RatingBox(color: AppColors.greyColor),
                            ],
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppStrings.statistics,
                    style: AppStyle.largeStyle.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatsCard(
                        title: AppStrings.issueDate,
                        data: convertDate(bond.issueDate),
                      ),
                      StatsCard(
                        title: AppStrings.maturityDate,
                        data: convertDate(bond.maturityDate),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatsCard(
                        title: AppStrings.category,
                        data: bond.category,
                      ),
                      StatsCard(
                        title: AppStrings.price,
                        data: bond.price.toString(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatsCard(
                        title: AppStrings.couponRate,
                        data: "${bond.couponRate.toString()}%",
                      ),
                      StatsCard(
                        title: AppStrings.faceValue,
                        data: bond.faceValue.toString(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatsCard(
                        title: AppStrings.maxQuantity,
                        data: bond.availableQuantity.toString(),
                      ),
                      StatsCard(
                        title: AppStrings.issueSize,
                        data: formatNumber(bond.issueSize),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatsCard(
                        title: AppStrings.security,
                        data: bond.security,
                      ),
                      StatsCard(
                        title: AppStrings.govtGuarantee,
                        data:
                            bond.govtGuarantee ? AppStrings.yes : AppStrings.no,
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: AppButton(
                          onTap: () {},
                          text: AppStrings.sell,
                          color: AppColors.errorColor,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: AppButton(
                          onTap: () {},
                          text: AppStrings.buy,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 52),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingBox extends StatelessWidget {
  const RatingBox({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppStyle.mediumStyle,
              ),
              const Divider(),
              Text(
                data,
                style: AppStyle.mediumStyle.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterTiles extends StatefulWidget {
  const FilterTiles({super.key});

  @override
  State<FilterTiles> createState() => _FilterTilesState();
}

class _FilterTilesState extends State<FilterTiles> {
  List<String> categories = ["1M", "3M", "6M", "1Y", "3Y", "5Y"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              BlocProvider.of<BondDetailsBloc>(context)
                  .add(const ChangeYearEvent());
            },
            borderRadius: BorderRadius.circular(22),
            splashColor: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: AppStyle.mediumStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    color: selectedIndex == index
                        ? AppColors.primaryColor
                        : AppColors.fontColor,
                    decoration: selectedIndex == index
                        ? TextDecoration.underline
                        : null,
                    decorationColor: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
