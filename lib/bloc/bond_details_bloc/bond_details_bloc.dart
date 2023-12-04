import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bond_details_event.dart';
part 'bond_details_state.dart';

class BondDetailsBloc extends Bloc<BondDetailsEvent, BondDetailsState> {
  BondDetailsBloc() : super(const BondDetailsInitial()) {
    on<ChangeYearEvent>(_changeYear);
  }

  void _changeYear(ChangeYearEvent event, Emitter<BondDetailsState> emit) {
    emit(const BondDetailsInitial());
    int randomNumber = Random().nextInt(10000);
    emit(YearChangedState(randomNumber));
  }
}
