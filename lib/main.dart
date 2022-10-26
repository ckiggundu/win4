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
