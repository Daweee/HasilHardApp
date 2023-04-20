import 'package:flutter/material.dart';
import 'package:hasil_hard_app/const_colors.dart';
import 'package:hasil_hard_app/verification_screen.dart';

enum BoxSelection { Box1, Box2 }

class ChooseRoleScreen extends StatefulWidget {
  const ChooseRoleScreen({super.key});

  @override
  State<ChooseRoleScreen> createState() => _ChooseRoleScreenState();
}

class _ChooseRoleScreenState extends State<ChooseRoleScreen> {
  bool box1Selected = false;
  bool box2Selected = false;
  BoxSelection _selectedBox = BoxSelection.Box1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 204,
                width: 228,
                child: Image.asset("images/HASIL.png"),
              ),
              Text(
                'Welcome, Lhouie.',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xFF343434),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Choose whether you are looking for a side hustle or you are an employer that need hustlers',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF585858),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (!box1Selected) {
                          box1Selected = true;
                          box2Selected = false;
                        }
                      });
                    },
                    child: Container(
                      height: 235,
                      width: 140,
                      decoration: BoxDecoration(
                        color: box1Selected ? Color(0XFFBFD4FF) : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: box1Selected
                                ? MyColors.accentColor
                                : Color(0xFF969595)),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFC1D6FF),
                                border: Border.all(
                                    color: MyColors.accentColor, width: 2),
                                image: DecorationImage(
                                  image: AssetImage('images/muscle.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Find a Job',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'I want to find a side hustle',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: MyColors.kGreyColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (!box2Selected) {
                          box2Selected = true;
                          box1Selected = false;
                        }
                      });
                    },
                    child: Container(
                      height: 235,
                      width: 140,
                      decoration: BoxDecoration(
                        color: box2Selected ? Color(0xFFFFCA99) : Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: box2Selected
                                ? Color(0XFFFF7A00)
                                : Color(0xFF969595)),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFCA99),
                                border: Border.all(
                                    color: Color(0XFFFF7A00), width: 2),
                                image: DecorationImage(
                                  image: AssetImage('images/businessman.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Find a Hustler',
                              style: TextStyle(
                                color: Color(0xFF343434),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Text(
                                'I want to find a hustler',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: MyColors.kGreyColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
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
                        builder: (context) => VerificationScreen(),
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
                    'Continue',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
