import 'package:bond_trade_demo/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:bond_trade_demo/models/bond_data_model/bond_data_model.dart';
import 'package:bond_trade_demo/screens/bond_detail_screen.dart';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/page_utils.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:bond_trade_demo/widgets/app_button.dart';
import 'package:bond_trade_demo/widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

class BondsList extends StatelessWidget {
  final List<BondDataModel> bondsList;
  const BondsList({
    super.key,
    required this.bondsList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bondsList.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bondsList[index].issuer,
                          style: AppStyle.mediumStyle,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          AppStrings.bondId + bondsList[index].bondId,
                          style: AppStyle.smallStyle,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          AppStrings.segment + bondsList[index].category,
                          style: AppStyle.smallStyle,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ViewDetailsWidget(bond: bondsList[index]),
                            const SizedBox(width: 8),
                            BookmarkWidget(bond: bondsList[index]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: ChartWidget(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ViewDetailsWidget extends StatelessWidget {
  const ViewDetailsWidget({
    super.key,
    required this.bond,
  });

  final BondDataModel bond;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: AppStrings.viewDetails,
      onTap: () {
        PageUtils.push(
          context: context,
          page: BondDetailsScreen(bond: bond),
        );
      },
      textSize: 12,
    );
  }
}

class BookmarkWidget extends StatelessWidget {
  final BondDataModel bond;
  const BookmarkWidget({super.key, required this.bond});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistBloc, WishlistState>(
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
    );
  }
}
