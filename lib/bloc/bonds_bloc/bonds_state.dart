part of 'bonds_bloc.dart';

sealed class BondsState extends Equatable {
  const BondsState();

  @override
  List<Object?> get props => [];
}

final class BondsInitial extends BondsState {
  const BondsInitial();

  @override
  List<Object?> get props => [];
}

final class BondsLoadingState extends BondsState {
  const BondsLoadingState();

  @override
  List<Object?> get props => [];
}

final class BondsLoadedState extends BondsState {
  final List<BondDataModel> bondsList;
  const BondsLoadedState(this.bondsList);

  @override
  List<Object?> get props => [bondsList];
}
