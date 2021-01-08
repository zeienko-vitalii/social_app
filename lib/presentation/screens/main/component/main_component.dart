import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/hero_animation_utility.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';
import 'package:social_app_demo/presentation/base/state/base_state_with_bloc.dart';
import 'package:social_app_demo/presentation/screens/main/bloc/main_bloc.dart';
import 'package:social_app_demo/utility/navigation/navigator_utils.dart';

class MainComponent extends StatefulWidget {
  const MainComponent();

  @override
  _MainComponentState createState() => _MainComponentState();
}

class _MainComponentState extends BaseStateWithBloc<MainComponent, MainBloc> {
  List<Color> get _userAvatarPlaceholders => Colors.accents.take(10).toList();

  @override
  void initState() {
    super.initState();
    bloc.add(GetAllUsersEvent());
  }

  @override
  Widget get appBar => AppBar(title: const Text('SocialApp'));

  @override
  Widget getWidget(BuildContext context) {
    return BlocBuilder<MainBloc, BaseBlocState>(
      builder: (BuildContext context, BaseBlocState state) {
        final UserContainer userContainer = state is GetUsersState ? state.userContainer : null;
        final bool isSuccess = userContainer != null;
        final bool isError = state is ErrorState || state is ApiErrorState;
        return isSuccess
            ? AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isSuccess ? 1 : 0,
                child: _usersListView(userContainer),
              )
            : isError
                ? error()
                : loaderWidget();
      },
    );
  }

  Widget _usersListView(UserContainer userContainer) {
    return RefreshIndicator(
      onRefresh: () async => bloc.add(GetAllUsersEvent()),
      child: ListView.builder(
        itemCount: userContainer.users.length,
        itemBuilder: (BuildContext context, int index) {
          return _userItem(index, userContainer.users[index]);
        },
      ),
    );
  }

  Widget _userItem(int index, User user) {
    return InkWell(
      onTap: () => NavigatorUtils.goToPostsScreen(context, user),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Container(
          height: 54.h,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(4.w),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[300],
                blurRadius: 10.w,
                spreadRadius: 0.w,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 8.0),
            child: Row(
              children: <Widget>[
                _avatarPlaceholder(index),
                const Indent(start: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeroAnimUtility.heroWrap(
                      Text(
                        user?.name ?? '',
                        style: TextStyle(fontSize: textSize_16),
                      ),
                      HeroAnimUtility.tag(user?.id?.toString()),
                    ),
                    const Indent(top: 1),
                    Text(
                      user?.email ?? '',
                      style: GoogleFonts.sourceCodePro(fontSize: textSize_12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _avatarPlaceholder(int index) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
        color: _userAvatarPlaceholders[index % 10],
        shape: BoxShape.circle,
      ),
    );
  }
}
