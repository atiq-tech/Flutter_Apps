import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enums/box_state.dart';

class BoxStateitem extends StatelessWidget {
  final boxState;
  const BoxStateitem({Key? key, required this.boxState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return boxState == BoxState.circle
        ? Icon(Icons.lens_outlined, size: 100.0)
        : boxState == BoxState.cross
            ? Icon(Icons.close, size: 120.0)
            : Container();
  }
}
