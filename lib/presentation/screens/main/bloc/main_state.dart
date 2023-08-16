part of 'main_bloc.dart';

@freezed
class MainState {
  const factory MainState.initial() = MainInitial;
  const factory MainState.getUsers(UserContainer userContainer) = GetUsersState;
  const factory MainState.error([String? msg]) = MainError;
}
