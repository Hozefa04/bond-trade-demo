import 'package:bond_trade_demo/bloc/bonds_bloc/bonds_bloc.dart';
import 'package:bond_trade_demo/screens/notification_screen.dart';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/app_strings.dart';
import 'package:bond_trade_demo/utils/page_utils.dart';
import 'package:bond_trade_demo/utils/text_styles.dart';
import 'package:bond_trade_demo/widgets/app_text_field.dart';
import 'package:bond_trade_demo/widgets/bonds_list.dart';
import 'package:bond_trade_demo/widgets/greeting_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

TextEditingController nameController = TextEditingController();

class BondListScreen extends StatefulWidget {
  const BondListScreen({super.key});

  @override
  State<BondListScreen> createState() => _BondListScreenState();
}

class _BondListScreenState extends State<BondListScreen> {
  @override
  void initState() {
    BlocProvider.of<BondsBloc>(context).add(const LoadBondsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GreetingWidget(),
                NotificationIcon(),
              ],
            ),
            SizedBox(height: 22),
            SearchWidget(),
            SizedBox(height: 22),
            CategoryTiles(),
            SizedBox(height: 22),
            BondsWidget(),
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
      child: BlocBuilder<BondsBloc, BondsState>(
        buildWhen: (previous, current) => current is BondsLoadedState,
        builder: (context, state) {
          if (state is BondsLoadedState) {
            return BondsList(bondsList: state.bondsList);
          }
          return Container();
        },
      ),
    );
  }
}

class CategoryTiles extends StatefulWidget {
  const CategoryTiles({super.key});

  @override
  State<CategoryTiles> createState() => _CategoryTilesState();
}

class _CategoryTilesState extends State<CategoryTiles> {
  List<String> categories = [
    "All",
    "Corporate",
    "Government",
    "Municipal",
  ];

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
              BlocProvider.of<BondsBloc>(context).add(LoadBondsEvent(
                categorySearch: categories[index],
                nameSearch: nameController.text,
              ));
            },
            borderRadius: BorderRadius.circular(22),
            splashColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 12,
              ),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? AppColors.primaryColor
                    : AppColors.whiteColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: AppStyle.smallStyle.copyWith(
                    color: selectedIndex == index ? AppColors.whiteColor : null,
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

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        PageUtils.push(
          context: context,
          page: const NotificationScreen(),
        );
      },
      icon: Icon(
        HeroIcons.bell_alert,
        color: AppColors.primaryColor,
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: nameController,
      horizontal: 0,
      onChange: (text) {
        BlocProvider.of<BondsBloc>(context).add(LoadBondsEvent(
          nameSearch: text,
        ));
      },
      suffixIcon: Icon(
        FontAwesome.magnifying_glass,
        color: AppColors.primaryColor,
      ),
      hintText: AppStrings.searchBonds,
    );
  }
}
