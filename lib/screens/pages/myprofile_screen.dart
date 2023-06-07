import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/screens/constants/mycolors.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  String cloudsAndMountains =
      "https://plus.unsplash.com/premium_photo-1677396121306-f44f6653d198?ixlib"
      "=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto"
      "=format&fit=crop&w=1198&q=80";

  String girlImage =
      "https://images.unsplash.com/photo-1547147607-6eab7b49f3ee?ixlib=rb-4.0"
      ".3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format"
      "&fit=crop&w=687&q=80";

  String portfolioImage1 = "https://images.unsplash.com/photo-1602233158242-3ba"
      "0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fH"
      "x8fA%3D%3D&auto=format&fit=crop&w=736&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    // color: Colors.purple,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(cloudsAndMountains)),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(110.0),
                        bottomLeft: Radius.circular(110.0))),
              ),
              Positioned(
                top: 35.0,
                left: 10.0,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: whiteColor,
                      size: 30.0,
                    )),
              ),
              Positioned(
                top: 35.0,
                right: 10.0,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: whiteColor,
                      size: 30.0,
                    )),
              ),
              Positioned(
                top: 190,
                left: 125,
                child: Container(
                  height: 115,
                  width: 115,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(girlImage),
                      ),
                      borderRadius: BorderRadius.circular(100.0)),
                ),
              ),
              Positioned(
                top: 210,
                left: 222,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 55.0),
            alignment: Alignment.center,
            child: Text("Amy Rachel",
                style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    letterSpacing: 1.0)),
          ),
          Container(
            padding: const EdgeInsets.only(top: 1.0),
            alignment: Alignment.center,
            child: const Text("Boston, USA, Software Developer, 23 y.o",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                )),
          ),
          Container(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "40",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: Colors.grey.shade600),
                ),
                Text(
                  "30",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: Colors.grey.shade600),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Listings/Portfolio",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey.shade500),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "Reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.grey.shade500),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  color: primaryColor,
                  minWidth: 140.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    "Portfolio/Listings",
                    style: TextStyle(
                        color: whiteColor, fontWeight: FontWeight.w500),
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 140.0,
                  color: Colors.grey.shade600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    "Documents",
                    style: TextStyle(
                        color: whiteColor, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0),
            child: ListTile(
              leading: Icon(
                Icons.image_outlined,
                color: Colors.grey.shade600,
                size: 30,
              ),
              title: Text(
                "Portfolio/Listings",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey.shade600),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 180,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // color: Colors.blueAccent,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(portfolioImage1)),
                          borderRadius: BorderRadius.circular(15.0)),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
