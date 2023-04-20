import 'package:flutter/material.dart';
import 'package:hasil_hard_app/onboarding_screen_two.dart';
import 'const_colors.dart';
import '';

class OnboardingScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 204,
            width: 228,
            child: Image.asset("images/HASIL.png"),
          ),
          Text(
            '"Good things happen to those who hustle."',
            style: TextStyle(
              fontFamily: 'Khand',
              color: MyColors.accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            height: 50,
            width: 208,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.75),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingScreenTwo(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: MyColors.accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Start Hustling',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
