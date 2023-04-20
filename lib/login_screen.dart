import 'package:flutter/material.dart';
import 'package:hasil_hard_app/choose_role_screen.dart';
import 'package:hasil_hard_app/const_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFDADADA),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: AssetImage('images/facebook.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFDADADA),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 12,
                            backgroundImage: AssetImage('images/google.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Google',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFDADADA),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 12,
                            backgroundImage: AssetImage('images/twitter.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Twitter',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'or',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                      ),
                    ),
                  ],
                ),
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
                        builder: (context) => ChooseRoleScreen(),
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
                    'Sign in with email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: MyColors.kGreyColor),
                  children: [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(
                        color: MyColors.accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
