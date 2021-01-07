import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/utilities.dart';

class Indent extends StatelessWidget {
  const Indent({Key key, this.start = 0, this.top = 0, this.end = 0, this.bottom = 0}) : super(key: key);
  final double start, top, end, bottom;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsetsDirectional.only(
          start: start?.w,
          top: top?.h,
          end: end?.w,
          bottom: bottom?.h,
        ),
      );
}

Widget loaderWidget({Key key}) {
  return Center(key: key, child: const CupertinoActivityIndicator());
}

Widget error() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        svgAsset('assets/images/failed_operation.svg', color: Colors.redAccent, size: iconSize_48),
        const Indent(top: 24),
        Text('Error', style: GoogleFonts.pressStart2p(fontSize: textSize_24)),
      ],
    ),
  );
}
