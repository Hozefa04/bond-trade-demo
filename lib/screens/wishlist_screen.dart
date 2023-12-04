import 'package:bond_trade_demo/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:bond_trade_demo/widgets/bonds_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 22),
            Text(
              AppStrings.yourWishlist,
              style: AppStyle.titleStyle,
            ),
            const SizedBox(height: 22),
            const BondsWidget(),
          ],
        ),
      ),
    );
  }
}

class BondsWidget extends StatelessWidget {
  const BondsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<WishlistBloc, WishlistState>(
        buildWhen: (previous, current) => current is WishlistLoadedState,
        builder: (context, state) {
          if (state is WishlistLoadedState) {
            return BondsList(bondsList: state.bondsList);
          }
          return Container();
        },
      ),
    );
  }
}
