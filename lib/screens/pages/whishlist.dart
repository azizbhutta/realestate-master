import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/screens/constants/mycolors.dart';

class WhishlistScreen extends StatefulWidget {
  const WhishlistScreen({Key? key}) : super(key: key);

  @override
  State<WhishlistScreen> createState() => _WhishlistScreenState();
}

class _WhishlistScreenState extends State<WhishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20.0,
              color: whiteColor,
            )),
        title: Text("WhishList",
            style: GoogleFonts.arsenal(
                color: whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                letterSpacing: 1.6)),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey.shade500),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1685260318929-25593b33f8ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: const Text(
                          "House",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                        child: const Text(
                          "80 Burnside Ave",
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.3,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                        child: const Text(
                          "Flushing, New York 11367",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0, top: 5.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/bed.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tub.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            const Row(
                              children: [
                                Text("\$4,961", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                Text("/m", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 6.0,),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey.shade500),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1685260318929-25593b33f8ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: const Text(
                          "House",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                        child: const Text(
                          "80 Burnside Ave",
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.3,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                        child: const Text(
                          "Flushing, New York 11367",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0, top: 17.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/bed.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tub.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            const Row(
                              children: [
                                Text("\$4,961", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                Text("/m", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 6.0,),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey.shade500),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1685260318929-25593b33f8ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: const Text(
                          "House",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                        child: const Text(
                          "80 Burnside Ave",
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.3,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                        child: const Text(
                          "Flushing, New York 11367",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0, top: 17.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/bed.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tub.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            const Row(
                              children: [
                                Text("\$4,961", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                Text("/m", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 6.0,),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey.shade500),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1685260318929-25593b33f8ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: const Text(
                          "House",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                        child: const Text(
                          "80 Burnside Ave",
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.3,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                        child: const Text(
                          "Flushing, New York 11367",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0, top: 17.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/bed.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tub.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            const Row(
                              children: [
                                Text("\$4,961", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                Text("/m", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 6.0,),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey.shade500),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1685260318929-25593b33f8ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: const Text(
                          "House",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                        child: const Text(
                          "80 Burnside Ave",
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.3,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                        child: const Text(
                          "Flushing, New York 11367",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0, top: 17.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/bed.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tub.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            const Row(
                              children: [
                                Text("\$4,961", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                Text("/m", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 6.0,),
            Container(
              height: 130.0,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Row(
                children: [
                  Container(
                    height: 120.0,
                    width: 120.0,
                    margin: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        // color: Colors.red,
                        border: Border.all(color: Colors.grey.shade500),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1685260318929-25593b33f8ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80"))),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: const Text(
                          "House",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 15.0,
                              letterSpacing: 1.3,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 6.0),
                        child: const Text(
                          "80 Burnside Ave",
                          style: TextStyle(
                              color: Colors.black87,
                              letterSpacing: 1.3,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                        child: const Text(
                          "Flushing, New York 11367",
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 17.0, top: 17.0),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/bed.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/tub.png",
                                  height: 20.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                const Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 15.0),
                                )
                              ],
                            ),
                            const SizedBox(width: 15.0,),
                            const Row(
                              children: [
                                Text("\$4,961", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17.0),),
                                Text("/m", style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }
}
