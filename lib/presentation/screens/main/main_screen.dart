import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_demo/di/di.dart';
import 'package:social_app_demo/presentation/screens/main/bloc/main_bloc.dart';
import 'package:social_app_demo/presentation/screens/main/component/main_component.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const String path = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainBloc>.value(
      value: getIt<MainBloc>(),
      child: const MainComponent(),
    );
  }
}
