import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'package:realestate/screens/pages/review_popup_screen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(

                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://dam-assets.au.reastatic.net/images/w_2000,h_1500/v1666226657/news-lifestyle-content-assets/wp-content/production/image-10_787815ed2d9/image-10_787815ed2d9.jpg?_i=AA'))),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'A motley crew \nmob',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Gustave Le Bon',
                            style: TextStyle(fontSize: 16, color: primaryColor),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '8.3',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.yellow),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(Icons.star, color: Color(0xfffaefd0)),
                              Icon(Icons.star, color: Color(0xfffaefd0))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffeceefb),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Share free reading',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryColor),
                        child: const Center(
                            child: Text(
                          'Receive',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Comment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Mary Thompson',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://blogger.googleusercontent.com/img/a/AVvXsEhXJ1lfuk2J1uTzEQ0mEsevS-j9NPaoh3MpWS2jwCfAFGtBI2dyq-glTwkWt_nUCPNsrSsg_BaEVWTysFDG4wzINj9ibAIKMPE5aJT8bXV7KrlysimjX0zy4XeQakYap3mx520j1_by85d3wACAUEpj_0gKZbaUB5tOGZCG8sBrB7mVLEqtSN3rnRO5=s16000'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Amy Perez',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.'),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReviewPopupScreen()));
                  },
                  child: const Text('All 150 reviews',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: primaryColor),),
                ),
                const Divider(
                  thickness: 0.08,
                  color: Colors.grey,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(CupertinoIcons.heart,size: 25,),
                    SizedBox(
                      width: 5,
                    ),
                    Text('165',style: TextStyle(fontSize: 15,),),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.textsms_outlined,size: 25,),
                    SizedBox(
                      width: 5,
                    ),
                    Text('172',style: TextStyle(fontSize: 15,),),
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



