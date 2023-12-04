part of 'wishlist_bloc.dart';

sealed class WishlistState extends Equatable {
  const WishlistState();

  @override
  List<Object?> get props => [];
}

final class WishlistInitial extends WishlistState {
  const WishlistInitial();

  @override
  List<Object?> get props => [];
}

final class WishlistLoadedState extends WishlistState {
  final List<BondDataModel> bondsList;
  const WishlistLoadedState(this.bondsList);

  @override
  List<Object?> get props => [bondsList];
}
