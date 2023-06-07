import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'package:realestate/screens/pages/welcome_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool showAnimation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 470,
                width: 350,
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: Text(
                        'Get in touch',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Name',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.person_2_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.multiline,
                        minLines: 4,
                        maxLines: 6,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Message...',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              // Update a boolean flag to show/hide the animation
                              showAnimation = true;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 25.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xfffb5313),
                            ),
                            child: const Center(
                              child: Text(
                                'Send',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        if (showAnimation)
                          Positioned.fill(
                            child: Center(
                              child: Container(
                                color: Colors.grey.shade400,
                                child: Center(
                                  child: Lottie.asset(
                                    'assets/animation/email-send.json', // Replace with your Lottie animation file
                                    width: 100,
                                    height: 80,
                                    fit: BoxFit.contain,
                                    repeat: false,
                                    controller: _controller,
                                    onLoaded: (composition) {
                                      _controller
                                        ..duration = composition.duration
                                        ..forward().whenComplete(() =>
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) => AlertDialog(
                                                title: const Text('THANK YOU!'),
                                                content: const Text('We will contact you soon...'),
                                              actions: [
                                                TextButton(onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
                                                }, child: const Text("Ok"))
                                              ],
                                              ),
                                          ),
                                        );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    )


                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
