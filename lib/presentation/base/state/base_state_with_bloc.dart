import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';

abstract class BaseStateWithBloc<T extends StatefulWidget, B extends BaseBloc> extends State<T> {
  @protected
  B bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  Widget getWidget(BuildContext context);

  Widget get appBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: appBar,
      // backgroundColor: Colors.white,
      body: getWidget(context),
    );
  }
}
