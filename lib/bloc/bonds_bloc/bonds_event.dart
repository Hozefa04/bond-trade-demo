part of 'bonds_bloc.dart';

sealed class BondsEvent extends Equatable {
  const BondsEvent();

  @override
  List<Object?> get props => [];
}

final class LoadBondsEvent extends BondsEvent {
  final String? categorySearch;
  final String? nameSearch;
  const LoadBondsEvent({
    this.categorySearch,
    this.nameSearch,
  });

  @override
  List<Object?> get props => [categorySearch, nameSearch];
}
