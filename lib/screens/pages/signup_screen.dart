import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 310,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 13, top: 210),
                        child: Text(
                          'Create',
                          style: GoogleFonts.arsenal(
                            fontSize: 30,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 13),
                        child: Text(
                          'Account',
                          style: GoogleFonts.arsenal(
                            fontSize: 27,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    'assets/images/signup.jpg',
                    height: 220,
                    width: 200,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 0.1,
              color: Colors.grey,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xfff8fafb),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 20,left: 20),
                child: Text('ACCOUNT INFORMATION',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Color(0xffbfc1c2)),),
              ),
            ),
            const Divider(
              thickness: 0.1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: Row(
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 110),
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Enter your name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.08  ,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: Row(
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 80),
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.08  ,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: Row(
                children: [
                  const Text(
                    'Occupation',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 70),
                  Expanded(
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        hintText: 'Enter your occupation',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.08  ,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),
                  backgroundColor: const Color(0xff240741)),
              child: const Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Divider(
              thickness: 0.08  ,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have account?',
                    style : TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff232c64)) ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninScreen()));
                  },
                  child: const Text('SignIn'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



