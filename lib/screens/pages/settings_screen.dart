import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'package:realestate/screens/pages/contact_screen.dart';
import 'package:realestate/screens/pages/edit_profile_screen.dart';
import 'package:realestate/screens/pages/myprofile_screen.dart';
import 'package:realestate/screens/pages/terms_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool themeStatus = false;
  bool notifyStatus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.grey.shade800,
              ),
            )),
      ),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 15.0, top: 5.0),
              child: Text(
                'Settings',
                style: GoogleFonts.arsenal(
                  fontSize: 30,
                  letterSpacing: 1.6,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
            ),

            // TODO APP SETTINGS
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 15.0, top: 5.0),
              child: Text(
                'App settings',
                style: GoogleFonts.arsenal(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.moon,
                      size: 15.0,
                      color: Colors.black87,
                    ),
                    title: const Text(
                      "Dark mode",
                      style: TextStyle(
                          color: Colors.black87, fontSize: 12.0),
                    ),
                    trailing: SizedBox(
                      width: 60.0,
                      child: FlutterSwitch(
                        width: 50.0,
                        height: 30.0,
                        valueFontSize: 7.0,
                        toggleSize: 10.0,
                        value: themeStatus,
                        activeColor: primaryColor,
                        activeTextColor: whiteColor,
                        inactiveColor: Colors.grey.shade300,
                        borderRadius: 30.0,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            themeStatus = val;
                          });
                        },
                      ),
                    ))),
            Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.bell,
                      size: 15.0,
                      color: Colors.black87,
                    ),
                    title: const Text(
                      "Push notifications",
                      style: TextStyle(
                          color: Colors.black87, fontSize: 12.0),
                    ),
                    trailing: SizedBox(
                      width: 60.0,
                      child: FlutterSwitch(
                        width: 50.0,
                        height: 30.0,
                        valueFontSize: 7.0,
                        toggleSize: 10.0,
                        value: notifyStatus,
                        activeColor: primaryColor,
                        activeTextColor: whiteColor,
                        inactiveColor: Colors.grey.shade300,
                        borderRadius: 30.0,
                        padding: 8.0,
                        showOnOff: true,
                        onToggle: (val) {
                          setState(() {
                            notifyStatus = val;
                          });
                        },
                      ),
                    ))),
            Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.flag,
                      size: 15.0,
                      color: Colors.black87,
                    ),
                    title: const Text(
                      "Language",
                      style: TextStyle(
                          color: Colors.black87, fontSize: 12.0),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black87,
                        size: 15.0,
                      ),
                    ))),

            // TODO ACCOUNT
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 15.0, top: 5.0),
              child: Text(
                'Account',
                style: GoogleFonts.arsenal(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyProfileScreen()));
              },
              child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 23.0, vertical: 7.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 15.0,
                        color: Colors.black87,
                      ),
                      title: const Text(
                        "Manage Account",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 12.0),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15.0,
                        ),
                      ))),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfileScreen()));
              },
              child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    leading: const Icon(
                      Icons.security,
                      size: 15.0,
                      color: Colors.black87,
                    ),
                    title: const Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.black87, fontSize: 12.0),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black87,
                        size: 15.0,
                      ),
                    ),
                  )),
            ),
            Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7.0),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.share,
                      size: 15.0,
                      color: Colors.black87,
                    ),
                    title: const Text(
                      "Share profile",
                      style: TextStyle(
                          color: Colors.black87, fontSize: 12.0),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black87,
                        size: 15.0,
                      ),
                    ))),

            // TODO ABOUT
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 15.0, top: 5.0),
              child: Text(
                'About',
                style: GoogleFonts.arsenal(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
              child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 23.0, vertical: 7.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                      leading: const Icon(
                        Icons.feedback_outlined,
                        size: 15.0,
                        color: Colors.black87,
                      ),
                      title: const Text(
                        "Feedback",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 12.0),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15.0,
                        ),
                      ))),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermScreen()));
              },
              child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 23.0, vertical: 7.0),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                      leading: const Icon(
                        Icons.help_outline,
                        size: 15.0,
                        color: Colors.black87,
                      ),
                      title: const Text(
                        "Terms & Condition",
                        style: TextStyle(
                            color: Colors.black87, fontSize: 12.0),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15.0,
                        ),
                      ))),
            ),

            const SizedBox(
              height: 20.0,
            ),

            // TODO SWITCH BUTTON
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MaterialButton(
                onPressed: () {},
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: primaryColor,
                child: const Text(
                  "Switch Account",
                  style:
                      TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 23.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.logout_rounded,
                    size: 20.0,
                    color: Colors.black87,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: const Text(
                      "Log out",
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
