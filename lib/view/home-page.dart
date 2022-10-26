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
