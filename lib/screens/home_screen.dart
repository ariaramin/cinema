import 'package:cinema/widgets/home_bottom_navigation.dart';
import 'package:cinema/widgets/home_header.dart';
import 'package:cinema/widgets/movie_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double top = -200;
  double left = -200;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            top = top + (details.delta.dy * 1.5);
            left = left + (details.delta.dx * 1.5);
          });
        },
        child: Container(
          width: size.width,
          height: size.height,
          color: const Color(0xff131313),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeOut,
                top: top,
                left: left,
                child: const MovieList(),
              ),
              const HomeHeader(),
              const Positioned(
                bottom: 26,
                left: 78,
                right: 78,
                child: HomeBottomNavigation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
