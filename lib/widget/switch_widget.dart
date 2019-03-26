import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  _SwitchWidgetState createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  FlareControls controller;
  bool isActive = false;

  @override
  void initState() {
    super.initState();
    controller = FlareControls();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          setState(() {
            isActive = !isActive;

            if (isActive) {
              controller.play('off');
            } else {
              controller.play('off');
              controller.play('on');
            }
          });
        },
        child: FlareActor(
          'assets/switch_final.flr',
          shouldClip: true,
          fit: BoxFit.cover,
          controller: controller,
        ),
      );
}
