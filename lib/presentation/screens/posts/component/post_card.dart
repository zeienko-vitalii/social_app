import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/utilities.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_card/post_card_bloc.dart';

import 'comment/comment_widget.dart';

class PostCard extends StatefulWidget {
  const PostCard({Key key, this.post}) : super(key: key);
  final Post post;

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> with SingleTickerProviderStateMixin {
  bool _isSubComponentOpen = false;

  BoxDecoration get _cardDecoration => BoxDecoration(
        color: Colors.white,
        borderRadius: !_isSubComponentOpen
            ? BorderRadius.circular(10.w)
            : BorderRadius.only(
                topLeft: Radius.circular(10.w),
                topRight: Radius.circular(10.w),
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
    final BaseBlocState state = context.watch<PostCardBloc>().state;
    final bool isLoading = state is LoadingState;
    final CommentContainer commentContainer = state is GetCommentsState ? state.commentContainer : null;
    _isSubComponentOpen = commentContainer != null;
    return Stack(
      children: <Widget>[
        _card(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Indent(top: 160.h),
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
      margin: EdgeInsets.symmetric(horizontal: 20.w),
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
        height: 182.h,
        margin: EdgeInsets.only(top: 10.h, bottom: 0.h),
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
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
              widget.post?.body?.replaceAll('\n', ' ')?.replaceAll('\r', ' ') ?? '',
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
    final CommentContainer commentContainer = context.select<PostCardBloc, CommentContainer>((PostCardBloc bloc) {
      final BaseBlocState state = bloc.state;
      if (state is GetCommentsState) {
        return state.commentContainer;
      }
      return null;
    });
    // get last 3 comments
    final List<Comment> comments = (commentContainer ?? context.watch<PostCardBloc>().commentContainer)
        ?.comments
        ?.reversed
        ?.toList()
        ?.take(3)
        ?.toList();
    return Container(
      decoration: BoxDecoration(boxShadow: _defaultShadow),
      child: CommentsBlock(comments: comments, isOpen: _isSubComponentOpen),
    );
  }

  Widget _circleButton({bool isLoading = false}) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.w)),
      child: InkWell(
        borderRadius: BorderRadius.circular(25.w),
        onTap: _onOpenComments,
        child: Container(
          height: 25.w,
          width: 25.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.w),
            boxShadow: _defaultShadow,
          ),
          child: Center(
            child: isLoading
                ? loaderWidget()
                : _isSubComponentOpen
                    ? svgAsset('assets/images/arrows_up.svg', size: 10.w)
                    : svgAsset('assets/images/arrows_down.svg', size: 10.w),
          ),
        ),
      ),
    );
  }

  Container _horDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
      height: 0.5.h,
      color: Colors.black87,
    );
  }

  void _onOpenComments() {
    if (_isSubComponentOpen) {
      context.read<PostCardBloc>().add(PostCardInitialEvent());
    } else {
      context.read<PostCardBloc>().add(GetPostCommentsEvent(widget.post?.id));
    }
  }
}
