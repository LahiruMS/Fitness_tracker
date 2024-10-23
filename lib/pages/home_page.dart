 import 'package:fitness_tracker/widgets/dashboard.dart';
import 'package:fitness_tracker/widgets/side_menu.dart';
import 'package:fitness_tracker/widgets/summary.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //sidebar
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),

            //Dashboard
            Expanded(
              flex: 7,
              child: SizedBox(
                child: Dashboard(),
              ),
            ),

            //summery
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Summary(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}