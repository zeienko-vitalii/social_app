import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/hero_animation_utility.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';
import 'package:social_app_demo/presentation/base/state/base_state_with_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_card/post_card_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_screen/post_bloc.dart';

import 'post_card.dart';

class PostsComponent extends StatefulWidget {
  const PostsComponent({Key key}) : super(key: key);

  @override
  _PostsComponentState createState() => _PostsComponentState();
}

class _PostsComponentState extends BaseStateWithBloc<PostsComponent, PostBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(GetAllPostsEvent());
  }

  @override
  Widget get appBar => AppBar(
        title: const Text(
          'Posts',
        ),
      );

  @override
  Widget getWidget(BuildContext context) {
    final BaseBlocState state = context.watch<PostBloc>().state;
    final PostContainer postContainer = state is GetPostsState ? state.postContainer : null;
    final bool isSuccess = postContainer != null;
    final bool isError = state is ErrorState || state is ApiErrorState;
    return isSuccess
        ? AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: isSuccess ? 1 : 0,
            child: _postsListView(postContainer),
          )
        : isError
            ? _withAuthorHeaderWidget(error())
            : _withAuthorHeaderWidget(loaderWidget());
  }

  Widget _postsListView(PostContainer postContainer) {
    return RefreshIndicator(
      onRefresh: () async {
        bloc.add(GetAllPostsEvent());
      },
      child: ListView.builder(
        itemCount: postContainer.posts.length + 1,
        itemBuilder: (BuildContext context, int index) {
          final int actualIndex = index - 1;
          if (actualIndex == -1) {
            return _author();
          }
          return BlocProvider<PostCardBloc>(
            create: (BuildContext context) => PostCardBloc(),
            child: PostCard(post: postContainer.posts[actualIndex]),
          );
        },
      ),
    );
  }

  Widget _author() {
    const Radius radius = Radius.circular(16);
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            height: 54.h,
            margin: EdgeInsets.symmetric(vertical: 16.h),
            padding: EdgeInsetsDirectional.only(start: 18.h),
            alignment: AlignmentDirectional.centerStart,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.8),
              borderRadius: const BorderRadius.only(topRight: radius, bottomRight: radius),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blueGrey[200],
                  offset: const Offset(5, 4),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: HeroAnimUtility.heroWrap(
              Text(
                'Posts by ${bloc.user?.name}',
                style: GoogleFonts.robotoMono(
                  fontSize: textSize_16,
                  color: Colors.white,
                ),
              ),
              HeroAnimUtility.tag(bloc.user?.id?.toString()),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget _withAuthorHeaderWidget(Widget child) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _author(),
        Expanded(child: child ?? Container()),
      ],
    );
  }
}
