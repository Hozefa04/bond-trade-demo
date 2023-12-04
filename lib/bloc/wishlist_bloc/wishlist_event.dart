part of 'wishlist_bloc.dart';

sealed class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object?> get props => [];
}

final class LoadWishlistEvent extends WishlistEvent {
  const LoadWishlistEvent();

  @override
  List<Object?> get props => [];
}

final class ManageWishlistEvent extends WishlistEvent {
  final BondDataModel bond;
  const ManageWishlistEvent(this.bond);

  @override
  List<Object?> get props => [bond];
}
