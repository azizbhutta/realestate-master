import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:realestate/screens/pages/review_screen.dart';
import 'package:realestate/screens/pages/whishlist.dart';
import '../constants/mycolors.dart';
import 'detail_screen.dart';
import 'emi_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.sort_rounded),
                  CircleAvatar(
                    radius: 14.0,
                    backgroundColor: Colors.grey.shade400,
                    child: Image.asset(
                      "assets/images/logo.png",
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 30.0),
              child: SizedBox(
                height: 60,
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                        size: 30,
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      suffixIcon: const Icon(FontAwesomeIcons.sliders),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: primaryColor))),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const EmiScreen()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.grey.shade100,
                                border: Border.all(color: Colors.black87)),
                            child: Image.asset(
                              "assets/images/home.png",
                              height: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "House",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReviewScreen()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.grey.shade100,
                                border: Border.all(color: Colors.black87)),
                            child: Image.asset(
                              "assets/images/apartment.png",
                              height: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Apartment",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.grey.shade100,
                              border: Border.all(color: Colors.black87)),
                          child: Image.asset(
                            "assets/images/land.png",
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "Land",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.grey.shade100,
                              border: Border.all(color: Colors.black87)),
                          child: Image.asset(
                            "assets/images/townhouse.png",
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "TownHouse",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 21.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Featured Listings",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 17.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1633505412556-82c0921e8f4a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1229&q=80",
                                    ))),
                          ),
                          const Positioned(
                              right: 10,
                              top: 8.0,
                              child: Icon(
                                CupertinoIcons.suit_heart,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 10.0),
                            child: Text(
                              "128 Colonel Roberto, St",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90.0, top: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "3 Beds | 2 Baths | 1,380 m sq",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: const Row(
                          children: [
                            Text(
                              "650 \$ /",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "mo",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1505409628601-edc9af17fda6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                                    ))),
                          ),
                          const Positioned(
                              right: 10,
                              top: 8.0,
                              child: Icon(
                                CupertinoIcons.suit_heart,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 10.0),
                            child: Text(
                              "128 Colonel Roberto, St",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90.0, top: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "3 Beds | 2 Baths | 1,380 m sq",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: const Row(
                          children: [
                            Text(
                              "500 \$ /",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "mo",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 170,
                            width: 320,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                image: const DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1636138389529-d35a2a348dc1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                                    ))),
                          ),
                          const Positioned(
                              right: 10,
                              top: 8.0,
                              child: Icon(
                                CupertinoIcons.suit_heart,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 10.0),
                            child: Text(
                              "128 Colonel Roberto, St",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 90.0, top: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_border,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "3 Beds | 2 Baths | 1,380 m sq",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: const Row(
                          children: [
                            Text(
                              "700 \$ /",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "mo",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 21.0,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20.0),
              child: const Text(
                "Recommended",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 17.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailScreen()));
                            },
                            child: Container(
                              height: 170,
                              width: 320,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1578683010236-d716f9a3f461?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                                      ))),
                            ),
                          ),
                          const Positioned(
                              right: 10,
                              top: 8.0,
                              child: Icon(
                                CupertinoIcons.suit_heart,
                                color: whiteColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WhishlistScreen()));
                            },
                            child: Container(
                              height: 170,
                              width: 320,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: const DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80",
                                      ))),
                            ),
                          ),
                          const Positioned(
                              right: 10,
                              top: 8.0,
                              child: Icon(
                                CupertinoIcons.suit_heart,
                                color: whiteColor,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
