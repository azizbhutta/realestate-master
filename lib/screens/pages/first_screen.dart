import 'package:flutter/material.dart';
import 'signin_screen.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  int selectedContainerIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: ClipOval(
                child: Container(
                  height: 220,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.elliptical(40, 20),
                      right: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/apartment.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Welcome \n We help you make your decision \n and we will make it easy for you to select an option',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SigninScreen()));
                setState(() {
                  selectedContainerIndex = 0;
                });
              },
              child: buildContainer(0, 'User'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainerIndex = 1;
                });
              },
              child: buildContainer(1, 'Real Estate Vendor'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedContainerIndex = 2;
                });
              },
              child: buildContainer(2, 'Other Vendor'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(int index, String label) {
    return Container(
      height: 45,
      width: 310,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: selectedContainerIndex == index ? const Color(0xff232c64) : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xff232c64),
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: selectedContainerIndex == index ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
