import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdaptiveBottomSheet extends ConsumerStatefulWidget {
  final Widget childWidget;

  const AdaptiveBottomSheet({super.key, required this.childWidget});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AdaptiveBottomSheetState();
}

class _AdaptiveBottomSheetState extends ConsumerState<AdaptiveBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom:
              Platform.isAndroid ? MediaQuery.of(context).padding.bottom : 0),
      child: widget.childWidget,
    );
  }
}
