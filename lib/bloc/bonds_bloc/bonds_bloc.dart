import 'package:bloc/bloc.dart';
import 'package:bond_trade_demo/models/bond_data_model/bond_data_model.dart';
import 'package:bond_trade_demo/utils/bond_data.dart';
import 'package:equatable/equatable.dart';

part 'bonds_event.dart';
part 'bonds_state.dart';

class BondsBloc extends Bloc<BondsEvent, BondsState> {
  late List<BondDataModel> bondsList;

  List<BondDataModel> get getBondsList => bondsList;

  BondsBloc() : super(const BondsInitial()) {
    on<LoadBondsEvent>(_loadBonds);
  }

  void _loadBonds(LoadBondsEvent event, Emitter<BondsState> emit) {
    emit(const BondsLoadingState());
    bondsList = bondDataMaster.map((bond) {
      return BondDataModel.fromJson(bond);
    }).toList();
    if (event.categorySearch != null &&
        event.categorySearch!.isNotEmpty &&
        event.categorySearch != "All") {
      bondsList = bondsList.where((bond) {
        return bond.category == event.categorySearch;
      }).toList();
    }
    if (event.nameSearch != null && event.nameSearch!.isNotEmpty) {
      bondsList = bondsList.where((bond) {
        return bond.issuer
            .toLowerCase()
            .contains(event.nameSearch!.toLowerCase());
      }).toList();
    }
    emit(BondsLoadedState(bondsList));
  }
}
