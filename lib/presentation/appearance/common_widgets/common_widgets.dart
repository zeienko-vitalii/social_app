import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app_demo/presentation/appearance/styles/dimens.dart';
import 'package:social_app_demo/presentation/appearance/uilities/utilities.dart';

const emptyW = Indent();

class Indent extends SizedBox {
  const Indent({super.key, double vertical = 0, double horizontal = 0})
      : super(
          height: vertical,
          width: horizontal,
        );
}

Widget loaderWidget() {
  return const Center(child: CupertinoActivityIndicator());
}

Widget error() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        svgAsset(
          'assets/images/failed_operation.svg',
          color: Colors.redAccent,
          size: iconSize_48,
        ),
        const Indent(vertical: 12),
        Text('Error', style: GoogleFonts.pressStart2p(fontSize: textSize_24)),
      ],
    ),
  );
}
