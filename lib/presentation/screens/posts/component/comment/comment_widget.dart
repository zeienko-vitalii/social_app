import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';

class CommentsBlock extends StatefulWidget {
  const CommentsBlock({Key key, this.comments, this.isOpen}) : super(key: key);
  final List<Comment> comments;
  final bool isOpen;

  @override
  _CommentsBlockState createState() => _CommentsBlockState();
}

class _CommentsBlockState extends State<CommentsBlock> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  List<Comment> _entries;
  double _height = 0;
  static const double _padding = 42.0, _commentItemDefaultHeight = 140;

  // get widget height with padding
  double get _openHeight => (widget.comments?.isNotEmpty ?? false)
      ? widget.comments.fold<double>(0.0, (double val, _) => val + _commentItemDefaultHeight.h) +
          _CommentsBlockState._padding * 2
      : _closedHeight;

  bool get _isOpen => widget.isOpen;

  double get _closedHeight => 0;

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
      height: _openHeight * _height,
      child: Column(
        children: (_entries?.isNotEmpty ?? false)
            ? List<Widget>.generate(
                _entries.length,
                (int index) => Flexible(
                  child: _commentItem(comment: _entries[index], isLastItem: index == _entries.length - 1),
                ),
              ).toList()
            : <Widget>[],
      ),
    );
  }

  void _updateFromWidget() {
    _entries = widget.comments;
    _controller.duration = Duration(milliseconds: 200 * ((_entries?.length ?? 1) - 1));
    _isOpen ? _controller.forward() : _controller.reverse();
  }

  void _tick() {
    setState(() {
      _height = Curves.easeInQuad.transform(_controller.value);
    });
  }

  Widget _commentItem({Comment comment, bool isLastItem = false}) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 1.h),
      padding: EdgeInsetsDirectional.only(top: 8.h, start: 18.h, end: 18.h),
      height: _commentItemDefaultHeight.h,
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
}
