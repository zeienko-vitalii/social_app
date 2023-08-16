import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/data/net/models/response/user/user.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/hero_animation_utility.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_screen/post_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/component/post_card.dart';

class PostsComponent extends StatefulWidget {
  const PostsComponent({super.key});

  @override
  State<PostsComponent> createState() => _PostsComponentState();
}

class _PostsComponentState extends State<PostsComponent> {
  PostBloc get _cubit => context.read<PostBloc>();
  User? get _user => _cubit.user;

  @override
  void initState() {
    super.initState();
    _cubit.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PostBloc>().state;
    final postContainer = state is GetPostsState ? state.container : null;
    final isSuccess = postContainer != null;
    final isError = state is PostError;
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: isSuccess
          ? AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isSuccess ? 1 : 0,
              child: _postsListView(postContainer),
            )
          : isError
              ? _withAuthorHeaderWidget(error())
              : _withAuthorHeaderWidget(loaderWidget()),
    );
  }

  Widget _postsListView(PostContainer postContainer) {
    return RefreshIndicator(
      onRefresh: _cubit.getPosts,
      child: ListView.builder(
        itemCount: postContainer.posts.length + 1,
        itemBuilder: (BuildContext context, int index) {
          final actualIndex = index - 1;
          if (actualIndex == -1) {
            return _author();
          }

          final post = postContainer.posts[actualIndex];
          return PostCard(post: post);
        },
      ),
    );
  }

  Widget _author() {
    const radius = Radius.circular(16);
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            height: 54,
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: const EdgeInsetsDirectional.only(start: 18, end: 4),
            alignment: AlignmentDirectional.centerStart,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                topRight: radius,
                bottomRight: radius,
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.blueGrey[200]!,
                  offset: const Offset(5, 4),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: HeroAnimUtility.heroWrap(
              Text(
                'Posts by ${_user?.name}',
                style: GoogleFonts.robotoMono(
                  fontSize: textSize_16,
                  color: Colors.white,
                ),
              ),
              HeroAnimUtility.tag('${_user?.id}'),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget _withAuthorHeaderWidget(Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _author(),
        Expanded(child: child),
      ],
    );
  }
}
