
# Flutter custom desktop title bar

This is a template flutter dektop application with a custom title bar leveraging the use of bitsdojo_window flutter package.


## Deployment Setup

Clone the project
```bash
  git clone https://github.com/ckiggundu/Flutter-desktop-custom-title-bar.git
```
Go to the project directory
```bash
  cd Project-Directory/
```
Install dependencies

```bash
  flutter pub get
```
Start the device emulator
```bash
  flutter run
```

## Screenshots

[![Screenshot-20221026-101306.png](https://i.postimg.cc/1tx32p95/Screenshot-20221026-101306.png)](https://postimg.cc/SXr4zY2w)

[![Screenshot-20221026-101637.png](https://i.postimg.cc/qBWSVjnT/Screenshot-20221026-101637.png)](https://postimg.cc/V5BDX9DG)



## File Structure

[![Screenshot-20221026-103356.png](https://i.postimg.cc/rFC8VQ4v/Screenshot-20221026-103356.png)](https://postimg.cc/0bjgZGcf)

## Usage/Examples

main.dart
```javascript
import 'package:fluent_ui/fluent_ui.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'view/home-page.dart';

void main() {
  runApp(const WinApp());
  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(800, 600);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Custom window with Flutter";
    win.show();
  });
}

const borderColor = Color(0xFF000000);

class WinApp extends StatelessWidget {
  const WinApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Windows Tutorial',
      home: HomePage(),
    );
  }
}
}
```

hompage.dart
```javascript
import 'package:fluent_ui/fluent_ui.dart';

import '../utils/windows-title-bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // import custom Windows Title Bar
            WindowsTitleBar(),

            SizedBox(
              height: 250,
            ),
            //text
            Center(
              child: Column(
                children: const [
                  Text(
                    'Windows Application with custom title bar!',
                    style: TextStyle(
                      color: Color.fromARGB(255, 49, 49, 49),
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
```
windows-buttons.dart
```javascript
import 'package:fluent_ui/fluent_ui.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

final buttonColors = WindowButtonColors(
    iconNormal: Color.fromARGB(255, 43, 43, 43),
    mouseOver: Color.fromARGB(255, 126, 126, 126),
    mouseDown: const Color.fromARGB(255, 42, 171, 190),
    iconMouseOver: Color.fromARGB(255, 255, 255, 255),
    iconMouseDown: const Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: Color.fromARGB(255, 53, 53, 53),
    iconNormal: Color.fromARGB(255, 48, 48, 48),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
```

windows-title-bar.dart
```javascript
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
```


## Acknowledgements

 - [Bits Dojo](https://github.com/bitsdojo/bitsdojo_window)

## License

[MIT](https://github.com/ckiggundu/Flutter-desktop-custom-title-bar/blob/develop/LICENSE.txt)

