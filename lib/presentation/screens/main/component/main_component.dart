import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/hero_animation_utility.dart';
import 'package:social_app_demo/presentation/screens/main/bloc/main_bloc.dart';
import 'package:social_app_demo/utility/navigation/navigator_utils.dart';

class MainComponent extends StatefulWidget {
  const MainComponent({super.key});

  @override
  State<MainComponent> createState() => _MainComponentState();
}

class _MainComponentState extends State<MainComponent> {
  MainBloc get _cubit => context.read<MainBloc>();
  List<Color> get _userAvatarPlaceholders => Colors.accents.take(10).toList();

  @override
  void initState() {
    super.initState();
    _cubit.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SocialApp')),
      body: BlocBuilder<MainBloc, MainState>(
        builder: (BuildContext context, MainState state) {
          final userContainer =
              state is GetUsersState ? state.userContainer : null;
          final isSuccess = userContainer != null;
          final isError = state is MainError;
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
      ),
    );
  }

  Widget _usersListView(UserContainer userContainer) {
    return RefreshIndicator(
      onRefresh: _cubit.getUsers,
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
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Container(
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(4),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[300]!,
                blurRadius: 10,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 8),
            child: Row(
              children: <Widget>[
                _avatarPlaceholder(index),
                const Indent(horizontal: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeroAnimUtility.heroWrap(
                      Text(
                        user.name,
                        style: TextStyle(fontSize: textSize_16),
                      ),
                      HeroAnimUtility.tag(user.id.toString()),
                    ),
                    const Indent(vertical: 1),
                    Text(
                      user.email,
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
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: _userAvatarPlaceholders[index % 10],
        shape: BoxShape.circle,
      ),
    );
  }
}
