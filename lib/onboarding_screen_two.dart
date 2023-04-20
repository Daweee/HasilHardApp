import 'package:flutter/material.dart';
import 'const_colors.dart';
import 'onboarding_screen_three.dart';

class OnboardingScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 41),
                height: 217,
                width: 184,
                child: Image.asset('images/Charco.png'),
              ),
              Text(
                'Get hired faster and smarter',
                style: TextStyle(
                  fontFamily: 'Khand',
                  color: MyColors.accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Start your side hustle, hassle-free.',
                style: TextStyle(
                  fontFamily: 'Khand',
                  color: MyColors.kGreyColor,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 46,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 41),
                    width: 40,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyColors.accentColor,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 41),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 41),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD9D9D9),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 317,
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
                        builder: (context) => OnboardingScreenThree(),
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
                  child: Text(
                    'Next',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
