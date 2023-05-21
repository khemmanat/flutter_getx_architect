import 'package:flutter/material.dart';
import 'package:flutter_getx_architect/common/widgets/app_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Home Page'),
        ElevatedButton(onPressed: () {}, child: const Text('Logout'))
      ],
    ));
  }
}
