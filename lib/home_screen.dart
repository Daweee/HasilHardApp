import 'package:flutter/material.dart';
import 'package:hasil_hard_app/const_colors.dart';
import 'package:hasil_hard_app/job2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'job1.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Recommended:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: SizedBox(
                height: 350,
                child: PageView(
                  controller: _controller,
                  children: [
                    JobOne(),
                    JobTwo(),
                  ],
                ),
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: MyColors.accentColor,
                dotColor: MyColors.accentColor.withOpacity(0.5),
                dotHeight: 20,
                dotWidth: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
