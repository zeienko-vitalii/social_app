import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/data/net/models/response/post/post.dart';
import 'package:social_app_demo/presentation/appearance/common_widgets/common_widgets.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/utilities.dart';
import 'package:social_app_demo/presentation/base/bloc/base_bloc.dart';
import 'package:social_app_demo/presentation/screens/posts/bloc/post_card/post_card_bloc.dart';

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
            ? _defaultBorderRadius
            : BorderRadius.only(
                topLeft: Radius.circular(10.w),
                topRight: Radius.circular(10.w),
              ),
        boxShadow: _defaultShadow,
      );

  BorderRadius get _defaultBorderRadius => BorderRadius.circular(10.w);

  List<BoxShadow> get _defaultShadow => const <BoxShadow>[
        BoxShadow(
          color: Color.fromRGBO(250, 251, 255, 0.6),
          offset: Offset(-4, -4),
          blurRadius: 15,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Color.fromRGBO(166, 171, 189, 0.6),
          offset: Offset(4, 4),
          blurRadius: 15,
          spreadRadius: 1,
        ),
      ];

  // AnimationController _animationController;
  // Animation<double> _commentPositionAnimation;

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

  Container _card() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: <Widget>[
          Container(
            height: 182.h,
            margin: EdgeInsets.only(top: 10.h, bottom: 0.h),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
            decoration: _cardDecoration,
            child: Column(
              children: <Widget>[
                Text(
                  widget.post?.title?.toUpperCase() ?? '',
                  style: GoogleFonts.ibmPlexMono(
                    fontSize: textSize_15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
                  height: 0.5.h,
                  color: Colors.black87,
                ),
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
          _isSubComponentOpen ? _animatedSubComponentsContainer() : Container(),
        ],
      ),
    );
  }

  Widget _animatedSubComponentsContainer() {
    final CommentContainer commentContainer = context.select<PostCardBloc, CommentContainer>((PostCardBloc bloc) {
      final BaseBlocState state = bloc.state;
      if (state is GetCommentsState) {
        return state.commentContainer;
      }
      return null;
    });
    final List<Comment> comments = commentContainer?.comments?.reversed?.toList()?.take(3)?.toList();
    return comments?.isNotEmpty ?? false
        ? Container(
            decoration: BoxDecoration(boxShadow: _defaultShadow),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: comments.length,
              itemBuilder: (BuildContext context, int index) {
                return _commentItem(comment: comments[index], isLastItem: index == comments.length - 1);
              },
            ),
          )
        : Container();
  }

  Widget _commentItem({Comment comment, bool isLastItem = false}) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 1.h),
      padding: EdgeInsetsDirectional.only(top: 8.h, start: 12.h, end: 12.h),
      height: 140.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: isLastItem
            ? BorderRadius.only(
                bottomLeft: Radius.circular(10.w),
                bottomRight: Radius.circular(10.w),
              )
            : BorderRadius.circular(4.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${comment?.name ?? ''}: ',
                    style: GoogleFonts.robotoMono(
                      fontSize: textSize_14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  TextSpan(
                    text: comment?.body ?? '',
                    style: TextStyle(
                      fontSize: textSize_14,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _circleButton({bool isLoading = false}) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.w)),
      child: InkWell(
        borderRadius: BorderRadius.circular(25.w),
        onTap: () {
          if (_isSubComponentOpen) {
            context.read<PostCardBloc>().add(PostCardInitialEvent());
          } else {
            context.read<PostCardBloc>().add(GetPostCommentsEvent(widget.post?.id));
          }
        },
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
}

class AnimatedComments extends StatelessWidget {
  const AnimatedComments({Key key, this.commentContainer}) : super(key: key);
  final CommentContainer commentContainer;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
