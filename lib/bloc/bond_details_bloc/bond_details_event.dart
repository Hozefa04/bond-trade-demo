part of 'bond_details_bloc.dart';

sealed class BondDetailsEvent extends Equatable {
  const BondDetailsEvent();

  @override
  List<Object?> get props => [];
}

final class ChangeYearEvent extends BondDetailsEvent {
  const ChangeYearEvent();

  @override
  List<Object?> get props => [];
}
