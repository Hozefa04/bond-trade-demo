import 'package:bond_trade_demo/bloc/bond_details_bloc/bond_details_bloc.dart';
import 'package:bond_trade_demo/bloc/bonds_bloc/bonds_bloc.dart';
import 'package:bond_trade_demo/bloc/news_bloc/news_bloc.dart';
import 'package:bond_trade_demo/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:bond_trade_demo/screens/home_screen.dart';
import 'package:bond_trade_demo/screens/onboarding_screen.dart';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:bond_trade_demo/utils/shared_prefs_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.initPrefs();
  await dotenv.load(fileName: ".env");
  runApp(const BondsTradingDemo());
}

class BondsTradingDemo extends StatelessWidget {
  const BondsTradingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BondsBloc(),
        ),
        BlocProvider(
          create: (context) => BondDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => WishlistBloc()
            ..add(
              const LoadWishlistEvent(),
            ),
        ),
        BlocProvider(
          create: (context) => NewsBloc()..add(const LoadNewsEvent()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bonds Trading Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
          ),
          useMaterial3: true,
        ),
        home: SharedPrefsHelper.getOnboardingValue()
            ? const HomeScreen()
            : const OnboardingScreen(),
      ),
    );
  }
}
