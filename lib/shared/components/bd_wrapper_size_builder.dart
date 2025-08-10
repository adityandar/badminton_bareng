import 'package:flutter/material.dart';

class BdWrapperSizeBuilder extends StatefulWidget {
  const BdWrapperSizeBuilder({
    super.key,
    required this.benchmarkWidget,
    required this.builder,
  });

  final Widget Function(GlobalKey key) benchmarkWidget;
  final Widget Function(BuildContext, Size) builder;

  @override
  State<BdWrapperSizeBuilder> createState() => _BdWrapperSizeBuilderState();
}

class _BdWrapperSizeBuilderState extends State<BdWrapperSizeBuilder> {
  var key = GlobalKey();
  Size? benchmarkSize;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future<void>.delayed(Duration(seconds: 1));
      final size = getSize(key);
      if (!(size?.isEmpty ?? true)) {
        setState(() {
          benchmarkSize = size;
        });
      }
    });
    super.initState();
  }

  static Size? getSize(GlobalKey key) {
    final box = key.currentContext?.findRenderObject() as RenderBox?;

    return box?.size;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Offstage(offstage: true, child: widget.benchmarkWidget(key)),
        widget.builder(context, benchmarkSize ?? Size.zero),
      ],
    );
  }
}
