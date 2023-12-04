import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bond_trade_demo/models/bond_data_model/bond_data_model.dart';
import 'package:bond_trade_demo/utils/shared_prefs_helper.dart';
import 'package:equatable/equatable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  late List<BondDataModel> bookmarkList;
  WishlistBloc() : super(const WishlistInitial()) {
    on<LoadWishlistEvent>(_loadBookmark);
    on<ManageWishlistEvent>(_manageBookmark);
  }

  void _loadBookmark(LoadWishlistEvent event, Emitter<WishlistState> emit) {
    emit(const WishlistInitial());
    List<String> bookmarkStringList = SharedPrefsHelper.getBookmarks();
    bookmarkList = bookmarkStringList.map((bookmark) {
      return BondDataModel.fromJson(json.decode(bookmark));
    }).toList();
    emit(WishlistLoadedState(bookmarkList));
  }

  Future<void> _manageBookmark(
      ManageWishlistEvent event, Emitter<WishlistState> emit) async {
    emit(const WishlistInitial());
    List<String> bookmarkStringList = SharedPrefsHelper.getBookmarks();
    String bondJson = json.encode(event.bond.toJson());
    if (bookmarkList.contains(event.bond)) {
      bookmarkStringList.remove(bondJson);
    } else {
      bookmarkStringList.add(bondJson);
    }
    await SharedPrefsHelper.setBookmarks(bookmarkStringList);
    add(const LoadWishlistEvent());
  }
}
