import 'package:flutter/material.dart';

class JobOne extends StatelessWidget {
  const JobOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFBFD4FF),
          height: 500,
          width: 500,
          child: Center(
            child: Column(
              children: [
                Text(
                  'Wedding Photographer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/couple.png'),
                    ),
                  ),
                ),
                Text(
                  'URGENT!!! we need a photographer with a decent skill for a wedding this coming May 21, 2023. Food and transportation is catered.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF767676),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Joseph S. Dela Criuz.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF767676),
                        fontSize: 12,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (() {}),
                      child: Text(
                        'Apply',
                      ),
                    ),
                    Text(
                      'Fee: ₱3500.00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
