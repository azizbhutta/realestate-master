import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/screens/constants/mycolors.dart';

import 'contact_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'EDIT PROFILE',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color(0xffb2b2b2)),
                    ),
                    const Icon(
                      Icons.done,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 48,
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white70,
                          child: Icon(
                            CupertinoIcons.camera,
                            size: 18,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 200),
                  child: Text(
                    'PUBLIC INFORMATION',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xffb2b2b2)),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.grey,
                      cursorHeight: 20,
                      textInputAction: TextInputAction.next,
                      decoration:  const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Colors.grey),
                        ),
                        label: Text("First name",style: TextStyle(color: primaryColor),),
                        suffixIcon: Icon(Icons.done,color: Colors.grey,),
                      )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.grey,
                      cursorHeight: 20,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Colors.grey),
                        ),
                        label: Text("Last name",style: TextStyle(color: primaryColor),),
                        suffixIcon: Icon(Icons.done,color: Colors.grey,),
                      )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.grey,
                      cursorHeight: 20,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Colors.grey),
                        ),
                        label: Text("Location",style: TextStyle(color: primaryColor),),
                        suffixIcon: Icon(Icons.done,color: Colors.grey,),
                      )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.grey,
                      cursorHeight: 20,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Colors.grey),
                        ),
                        label: Text("Phone",style: TextStyle(color: primaryColor),),
                        suffixIcon: Icon(Icons.done,color: Colors.grey,),
                      )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.grey,
                      cursorHeight: 20,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(
                              color: Colors.grey),
                        ),
                        label: Text("Mail",style: TextStyle(color: primaryColor),),
                        suffixIcon: Icon(Icons.done,color: Colors.grey,),
                      )
                  ),
                ),

                // Container(
                //   height:63  ,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                //     borderRadius: const BorderRadius.all(Radius.circular(20)),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children:  [
                //         const Text('First name',style: TextStyle(fontSize: 13,fontWeight:FontWeight.w300, color: Color(0xffb2b2b2)),),
                //         SizedBox(
                //           height: 40,
                //           child: TextFormField(
                //             textInputAction: TextInputAction.next,
                //             cursorColor: Colors.black,
                //             cursorHeight: 20,
                //             decoration: const InputDecoration(
                //               border: InputBorder.none,
                //               suffixIcon: Icon(
                //                 Icons.done,size: 20,
                //                 color: Color(0xffb2b2b2),
                //               ),
                //               contentPadding: const EdgeInsets.all(5),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   height:71 ,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                //     borderRadius: const BorderRadius.all(Radius.circular(20)),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children:  [
                //         Text('Last name',style: TextStyle(fontSize: 13,fontWeight:FontWeight.w900, color: Color(0xffb2b2b2)),),
                //         TextFormField(
                //           textInputAction: TextInputAction.next,
                //           cursorColor: Colors.black,
                //           decoration: const InputDecoration(
                //             border: InputBorder.none,
                //             suffixIcon: Icon(
                //               Icons.done,
                //               color: Color(0xffb2b2b2),
                //             ),
                //             contentPadding: const EdgeInsets.all(5),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   height:71 ,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                //     borderRadius: const BorderRadius.all(Radius.circular(20)),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children:  [
                //         const Text('Location',style: TextStyle(fontSize: 13,fontWeight:FontWeight.w900, color: Color(0xffb2b2b2)),),
                //         TextFormField(
                //           textInputAction: TextInputAction.next,
                //           cursorColor: Colors.black,
                //           decoration: const InputDecoration(
                //             border: InputBorder.none,
                //             suffixIcon: Icon(
                //               Icons.done,
                //               color: Color(0xffb2b2b2),
                //             ),
                //             contentPadding: const EdgeInsets.all(5),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   height:71 ,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                //     borderRadius: const BorderRadius.all(Radius.circular(20)),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children:  [
                //         const Text('Phone',style: TextStyle(fontSize: 13,fontWeight:FontWeight.w900, color: Color(0xffb2b2b2)),),
                //         TextFormField(
                //           textInputAction: TextInputAction.next,
                //           cursorColor: Colors.black,
                //           keyboardType: TextInputType.number,
                //           decoration: const InputDecoration(
                //             border: InputBorder.none,
                //             suffixIcon: Icon(
                //               Icons.done,
                //               color: Color(0xffb2b2b2),
                //             ),
                //             contentPadding: const EdgeInsets.all(5),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   height:71 ,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                //     borderRadius: const BorderRadius.all(Radius.circular(20)),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 15.0,left: 15.0),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children:  [
                //         Text('Mail',style: TextStyle(fontSize: 13,fontWeight:FontWeight.w900, color: Color(0xffb2b2b2)),),
                //         TextFormField(
                //           textInputAction: TextInputAction.done,
                //           cursorColor: Colors.black,
                //           decoration: const InputDecoration(
                //             border: InputBorder.none,
                //             suffixIcon: Icon(
                //               Icons.done,
                //               color: Color(0xffb2b2b2),
                //             ),
                //             contentPadding: const EdgeInsets.all(5),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
