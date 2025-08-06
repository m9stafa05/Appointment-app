import 'widgets/doctors_blue_container.dart';
import 'widgets/home_tap_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HomeTopBar(), DoctorsBlueContainer(),],
          ),
        ),
      ),
    );
  }
}
