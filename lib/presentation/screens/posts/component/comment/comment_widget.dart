import 'package:flutter/material.dart';
import 'package:social_app_demo/data/net/models/response/comment/comment.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';

class CommentsBlock extends StatefulWidget {
  const CommentsBlock({
    required this.comments,
    super.key,
    this.isOpen = false,
  });

  final List<Comment> comments;
  final bool isOpen;

  @override
  State<CommentsBlock> createState() => _CommentsBlockState();
}

class _CommentsBlockState extends State<CommentsBlock>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this)
    ..addListener(_tick);
  final List<Comment> _entries = [];
  double _height = 0;

  static const _padding = 42.0;
  static const _commentItemDefaultHeight = 140.0;

  // get widget height with padding
  double get _openHeight => (widget.comments.isNotEmpty)
      ? widget.comments.fold<double>(
            0,
            (double val, _) => val + _commentItemDefaultHeight,
          ) +
          _CommentsBlockState._padding * 2
      : _closedHeight;

  bool get _isOpen => widget.isOpen;

  double get _closedHeight => 0;

  @override
  void initState() {
    super.initState();
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
    return SizedBox(
      height: _openHeight * _height,
      child: Column(
        children: <Widget>[
          if (_entries.isNotEmpty)
            ...List<Widget>.generate(
              _entries.length,
              (int index) => Flexible(
                child: _commentItem(
                  comment: _entries[index],
                  isLastItem: index == _entries.length - 1,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void _updateFromWidget() {
    _entries
      ..clear()
      ..addAll(widget.comments);
    _controller.duration = Duration(
      milliseconds: 200 * ((_entries.length) - 1),
    );
    _isOpen ? _controller.forward() : _controller.reverse();
  }

  void _tick() {
    setState(() {
      _height = Curves.easeInQuad.transform(_controller.value);
    });
  }

  Widget _commentItem({required Comment comment, bool isLastItem = false}) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 1),
      padding: const EdgeInsetsDirectional.only(top: 8, start: 18, end: 18),
      height: _commentItemDefaultHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: isLastItem
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )
            : BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${comment.name ?? ''}: ',
                    style: TextStyle(
                      fontSize: textSize_14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  TextSpan(
                    text: comment.body ?? '',
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
