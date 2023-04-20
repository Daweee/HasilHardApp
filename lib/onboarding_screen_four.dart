import 'package:flutter/material.dart';
import 'package:hasil_hard_app/login_screen.dart';
import 'const_colors.dart';

class OnboardingScreenFour extends StatelessWidget {
  const OnboardingScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
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
                  child: Image.asset('images/Standing.png'),
                ),
                Container(
                  width: 274,
                  child: Text(
                    'Say goodbye to job hunting stress',
                    style: TextStyle(
                      fontFamily: 'Khand',
                      color: MyColors.accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: Text(
                    'You don’t need to worry about not having any source of income anymore.',
                    style: TextStyle(
                      fontFamily: 'Khand',
                      color: MyColors.kGreyColor,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 41),
                      width: 40,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: MyColors.accentColor,
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
                          builder: (context) => LoginScreen(),
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
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
