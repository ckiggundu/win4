import 'package:fluent_ui/fluent_ui.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'windows-buttons.dart';

class WindowsTitleBar extends StatelessWidget {
  const WindowsTitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(child: MoveWindow()),
                  const WindowButtons()
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
