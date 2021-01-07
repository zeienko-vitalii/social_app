part of 'main_bloc.dart';

@immutable
abstract class MainEvent extends BaseEvent{}

class GetAllUsersEvent extends MainEvent {}