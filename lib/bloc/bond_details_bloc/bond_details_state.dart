part of 'bond_details_bloc.dart';

sealed class BondDetailsState extends Equatable {
  const BondDetailsState();

  @override
  List<Object?> get props => [];
}

final class BondDetailsInitial extends BondDetailsState {
  const BondDetailsInitial();

  @override
  List<Object?> get props => [];
}

final class YearChangedState extends BondDetailsState {
  final int randomNumber;
  const YearChangedState(this.randomNumber);

  @override
  List<Object?> get props => [randomNumber];
}
