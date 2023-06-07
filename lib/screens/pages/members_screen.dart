import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/mycolors.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60.0),
              Container(
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
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 17.0, vertical: 30.0),
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
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 24.0),
                child: const Text(
                  "Agents",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 6.0),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12.0),
                        color: whiteColor,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 5.0, top: 8.0),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    border: Border.all(color: primaryColor),
                                    image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://superstarsbio.com/wp-content/uploads/2018/11/Burak-Ozcivit.jpg"))),
                              ),
                              title: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gg Gg",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700, fontSize: 15),
                                  ),
                                  Text(
                                    "Marketing",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0)),
                                color: greyColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 13.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      children: [
                                        Text("Listed Properties: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                                        Text("2", style: TextStyle(color: Colors.black),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text("Phone: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                                        const Text("123456789", style: TextStyle(color: Colors.black),),
                                        const SizedBox(width: 50.0,),
                                        MaterialButton(
                                          onPressed: (){},
                                          height: 30,
                                          color: primaryColor,
                                          child: const Row(
                                            children: [
                                              Icon(Icons.send, size: 15.0, color: whiteColor,),
                                              SizedBox(width: 4.0,),
                                              Text("Message", style: TextStyle(color: whiteColor),),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                    const Row(
                                      children: [
                                        Text("Email: ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                                        Text("gg@gmail.com", style: TextStyle(color: Colors.black),),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ));
  }
}
