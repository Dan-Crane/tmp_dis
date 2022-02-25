import 'package:dis_flutter/features/drawer/presentation/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DiscordDrawer(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
