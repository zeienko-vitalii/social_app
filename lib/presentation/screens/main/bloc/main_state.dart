part of 'main_bloc.dart';

@immutable
abstract class MainState extends BaseBlocState {}

class MainInitial extends BaseBlocState {}

class GetUsersState extends MainState {
  GetUsersState(this.userContainer);

  final UserContainer userContainer;
}
