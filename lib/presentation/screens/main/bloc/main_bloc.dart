import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/utility/logger/logger_service.dart';

part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Cubit<MainState> {
  MainBloc(this.api) : super(const MainState.initial());

  final Api api;

  Future<void> getUsers() async {
    try {
      final container = await api.getUsers();
      if (container == null) throw Exception('UserContainer is null');

      emit(MainState.getUsers(container));
    } catch (e, stk) {
      Log().e(e, stk);

      final msg = e.toString();
      emit(MainState.error(msg));
    }
  }
}
