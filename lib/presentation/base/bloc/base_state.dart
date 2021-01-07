part of 'base_bloc.dart';

@immutable
abstract class BaseBlocState {
  const BaseBlocState();
}

class InitialBaseState extends BaseBlocState {
  const InitialBaseState() : super();
}

abstract class BaseProcessState extends BaseBlocState {
  const BaseProcessState({this.data});

  final dynamic data;
}

class ErrorState extends BaseProcessState {
  const ErrorState([dynamic data]) : super(data: data);
}

class SuccessState extends BaseProcessState {
  const SuccessState([dynamic data]) : super(data: data);
}

class LoadingState extends BaseProcessState {
  const LoadingState([dynamic data]) : super(data: data);
}

@immutable
class FinishLoadingState extends BaseProcessState {
  const FinishLoadingState([dynamic data]) : super(data: data);
}

@immutable
class ApiErrorState extends ErrorState {
  const ApiErrorState([dynamic type, this.apiError]) : super(type);

  final ApiError apiError;
}
