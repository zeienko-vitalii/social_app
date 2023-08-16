import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/utilities.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_card/post_card_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/component/comment/comment_widget.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key, this.post});
  final Post? post;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard>
    with SingleTickerProviderStateMixin {
  PostCardBloc get _postCardCubit => context.read<PostCardBloc>();

  bool _isSubComponentOpen = false;

  BoxDecoration get _cardDecoration => BoxDecoration(
        color: Colors.white,
        borderRadius: !_isSubComponentOpen
            ? BorderRadius.circular(10)
            : const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
        boxShadow: _defaultShadow,
      );

  List<BoxShadow> get _defaultShadow => const <BoxShadow>[
        BoxShadow(
          color: Color.fromRGBO(166, 171, 189, 0.3),
          offset: Offset(4, 4),
          blurRadius: 12,
          spreadRadius: 1,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PostCardBloc>().state;
    final isLoading = state is PostCardInitial || state is PostCardLoading;
    final commentContainer =
        state is GetCommentsState ? state.commentContainer : null;
    _isSubComponentOpen = commentContainer != null;
    return Stack(
      children: <Widget>[
        _card(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Indent(vertical: 80),
            Align(
              alignment: Alignment.bottomCenter,
              child: _circleButton(isLoading: isLoading),
            ),
          ],
        ),
      ],
    );
  }

  Widget _card() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          _cardContent(),
          _commentsWidget(),
        ],
      ),
    );
  }

  Widget _cardContent() {
    return GestureDetector(
      onTap: _onOpenComments,
      child: Container(
        height: 182,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(18),
        decoration: _cardDecoration,
        child: Column(
          children: <Widget>[
            Text(
              widget.post?.title?.toUpperCase() ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: textSize_15,
                fontWeight: FontWeight.bold,
              ),
            ),
            _horDivider(),
            Text(
              widget.post?.body?.replaceAll('\n', ' ').replaceAll('\r', ' ') ??
                  '',
              style: TextStyle(
                fontSize: textSize_14,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _commentsWidget() {
    final commentContainer =
        context.select<PostCardBloc, CommentContainer>((PostCardBloc bloc) {
      final state = bloc.state;
      if (state is GetCommentsState) {
        return state.commentContainer;
      }
      return const CommentContainer();
    });
    // get last 3 comments
    final comments =
        commentContainer.comments.reversed.toList().take(3).toList();

    return Container(
      decoration: BoxDecoration(boxShadow: _defaultShadow),
      child: CommentsBlock(
        comments: comments,
        isOpen: _isSubComponentOpen,
      ),
    );
  }

  Widget _circleButton({bool isLoading = false}) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: _onOpenComments,
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: _defaultShadow,
          ),
          child: Center(
            child: isLoading
                ? loaderWidget()
                : _isSubComponentOpen
                    ? svgAsset('assets/images/arrows_up.svg', size: 10)
                    : svgAsset('assets/images/arrows_down.svg', size: 10),
          ),
        ),
      ),
    );
  }

  Container _horDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      height: 0.5,
      color: Colors.black87,
    );
  }

  void _onOpenComments() {
    final postId = widget.post?.id;
    if (_isSubComponentOpen) {
      _postCardCubit.finishLoading();
    } else if (postId != null) {
      _postCardCubit.getComments(postId);
    }
  }
}
