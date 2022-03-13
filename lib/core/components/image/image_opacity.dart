import 'package:flutter/material.dart';
import '../enum/duration_enum.dart';

class ImageOpacitiy extends StatefulWidget {
  final String url;

  const ImageOpacitiy({Key? key, required this.url}) : super(key: key);

  @override
  State<ImageOpacitiy> createState() => _ImageOpacitiyState();
}

class _ImageOpacitiyState extends State<ImageOpacitiy> {
  bool _isOpacity = true;

  @override
  void initState() {
    super.initState();
    waitForOpacitiy();
  }

  Future<void> waitForOpacitiy() async {
    await Future.delayed(DurationEnum.LOW.time);
    setState(() {
      _isOpacity = false;
    });
  }

   double get opacityValue => _isOpacity ? 0 : 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        duration: DurationEnum.HIGH.time,
        opacity: opacityValue,
        child: Image.network(widget.url));
  }
}
