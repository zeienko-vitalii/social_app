import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/api/api_impl.dart';
import 'package:social_app_demo/data/net/models/api/api_response.dart';

part 'base_event.dart';

part 'base_state.dart';

abstract class BaseBloc extends Bloc<BaseEvent, BaseBlocState> {
  BaseBloc() : super(const InitialBaseState());

  @protected
  Api api = ApiImpl();

  @override
  Stream<BaseBlocState> mapEventToState(BaseEvent event) => mapChildEventToState(event);

  Stream<BaseBlocState> mapChildEventToState(BaseEvent event);

  Future<BaseBlocState> handleApiError(Object error) async {
    if (error is ApiError) {
      return ApiErrorState(error);
    } else {
      return const ErrorState();
    }
  }
}
