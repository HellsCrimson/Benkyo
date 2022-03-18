import 'package:flutter/material.dart';
import 'package:benkyo/icons.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SvgAsset extends StatelessWidget {
  final AssetName? assetName;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  const SvgAsset(
      {Key? key, this.assetName, this.height, this.width, this.fit, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: WebsafeSvg.asset(
        KanaSvgAssets().assets[assetName]!,
        fit: fit ?? BoxFit.cover,
        color: color,
      ),
    );
  }
}
