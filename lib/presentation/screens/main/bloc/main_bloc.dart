import 'dart:async';

import 'package:meta/meta.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends BaseBloc {
  @override
  Stream<BaseBlocState> mapChildEventToState(BaseEvent event) async* {
    if (event is GetAllUsersEvent) {
      yield await _getUsers();
    } else {
      yield SuccessState(event);
    }
  }

  Future<BaseBlocState> _getUsers() {
    return api.getUsers().then((UserContainer value) {
      return GetUsersState(value);
    }).catchError(handleApiError);
  }
}
