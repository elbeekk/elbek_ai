import 'package:elbek_ai/presentation/pages/home/widgets/chat.dart';
import 'package:elbek_ai/presentation/pages/home/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          DrawerWidget(),
          ChatWidget(),
        ],
      ),
    );
  }
}
