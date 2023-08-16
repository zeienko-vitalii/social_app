import 'package:get_it/get_it.dart';
import 'package:social_app_demo/data/net/api/api.dart';
import 'package:social_app_demo/data/net/api/api_impl.dart';
import 'package:social_app_demo/presentation/screens/main/bloc/main_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_card/post_card_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> initDI() async {
  await _registerRepositories();

  await _registerBloc();
}

Future<void> _registerRepositories() async {
  final api = ApiImpl.init();
  getIt.registerSingleton<Api>(api);
}

Future<void> _registerBloc() async {
  getIt
    ..registerSingleton<MainBloc>(
      MainBloc(
        getIt<Api>(),
      ),
    )
    ..registerSingleton<PostCardBloc>(
      PostCardBloc(
        getIt<Api>(),
      ),
    );
}
