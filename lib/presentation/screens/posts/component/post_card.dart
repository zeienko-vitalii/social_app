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
    return GestureDetector(
      onTap: () {
        if (_isSubComponentOpen) {
          context.read<PostCardBloc>().add(PostCardInitialEvent());
        } else {
          context.read<PostCardBloc>().add(GetPostCommentsEvent(widget.post?.id));
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: <Widget>[
            Container(
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
            _commentsWidget(),
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
    final List<Comment> comments = (commentContainer ?? context.watch<PostCardBloc>().commentContainer)
        ?.comments
        ?.reversed
        ?.toList()
        ?.take(3)
        ?.toList();
    final List<Widget> commentsWidget = List<Widget>.filled(3, _commentItem(), growable: true);
    if (comments?.isNotEmpty ?? false) {
      commentsWidget.clear();
      for (int i = 0; i < comments.length; i++) {
        commentsWidget.add(_commentItem(comment: comments[i], isLastItem: i == comments.length - 1));
      }
    }
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            offset: const Offset(4, 4),
            blurRadius: 18,
            spreadRadius: 1,
          )
        ],
      ),
      child: CommentsBlock(commentContainer: commentsWidget, isOpen: _isSubComponentOpen),
    );
  }

  Widget _commentItem({Comment comment, bool isLastItem = false}) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 1.h),
      padding: EdgeInsetsDirectional.only(top: 8.h, start: 18.h, end: 18.h),
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
                    style: TextStyle(
                      fontSize: textSize_14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  TextSpan(
                    text: comment?.body ?? '',
                    style: TextStyle(
                      fontSize: textSize_14,
                      // fontWeight: FontWeight.w300,
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

class CommentsBlock extends StatefulWidget {
  const CommentsBlock({Key key, this.commentContainer, this.isOpen}) : super(key: key);
  final List<Widget> commentContainer;
  final bool isOpen;

  @override
  _CommentsBlockState createState() => _CommentsBlockState();
}

class _CommentsBlockState extends State<CommentsBlock> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  List<Widget> _entries;
  double _height = 0;
  static const double padding = 42.0;

  double get openHeight =>
      widget.commentContainer.fold<double>(0.0, (double val, _) => val + 140) + _CommentsBlockState.padding * 2;

  bool get isOpen => widget.isOpen;

  double get closedHeight => 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(_tick);
    _updateFromWidget();
  }

  @override
  void didUpdateWidget(CommentsBlock oldWidget) {
    // Opens or closes the ticked if the status changed
    _updateFromWidget();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: openHeight * _height,
      child: Column(
        children: _entries
            .map((Widget e) => Flexible(
                  child: e,
                ))
            .toList(),
      ),
    );
  }

  void _updateFromWidget() {
    _entries = widget.commentContainer;
    _controller.duration = Duration(milliseconds: 200 * (_entries.length - 1));
    isOpen ? _controller.forward() : _controller.reverse();
  }

  void _tick() {
    setState(() {
      _height = Curves.easeInQuad.transform(_controller.value);
    });
  }
}
