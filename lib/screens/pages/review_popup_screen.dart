import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewPopupScreen extends StatefulWidget {
  const ReviewPopupScreen({Key? key}) : super(key: key);

  @override
  State<ReviewPopupScreen> createState() => _ReviewPopupScreenState();
}

class _ReviewPopupScreenState extends State<ReviewPopupScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(100, 22, 44, 33),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20),
                  child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.cancel,size: 27,color: Colors.white,)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top:20,right: 20,left: 20),
                    child: Column(
                      children: [
                        Row(
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
                         SizedBox(
                          height: 10,
                        ),
                         Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                         SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Four minutes ago',style: TextStyle(fontSize: 15,color: Color(0xffc0bfc6)),),
                            SizedBox(
                              width: 120,
                            ),
                            Icon(CupertinoIcons.heart,size: 25,),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.textsms_outlined,size: 25,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top:20,right: 20,left: 20),
                    child: Column(
                      children: [
                         Row(
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
                        SizedBox(
                          height: 10,
                        ),
                         Text(
                            'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.'),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Ten minutes ago',style: TextStyle(fontSize: 15,color: Color(0xffc0bfc6)),),
                            SizedBox(
                              width: 120,
                            ),
                            Icon(CupertinoIcons.heart,size: 25,),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.textsms_outlined,size: 25,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top:20,right: 20,left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://www.goodmorningimagesdownload.com/wp-content/uploads/2021/05/Fb-Best-Profile-Images-photo-free-download-1-168x300.gif'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Daniel Martinez',
                              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Thirty minutes ago',style: TextStyle(fontSize: 15,color: Color(0xffc0bfc6)),),
                            SizedBox(
                              width: 120,
                            ),
                            Icon(CupertinoIcons.heart,size: 25,),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.textsms_outlined,size: 25,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top:20,right: 20,left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhzPkPhRZU5PdN3WWv8_Ovsm2qxR9v5SgLBlvzH10ea4S_Krt9l6Y4PmyrsWDaZQB55cOgOYRLsW8CwYI57D8wm0UlwBllUWYI8qzfhsxtw2-MAEL6TvjIQ1Fj0y-jI4OXFM9sdnT9TQTSDgcAaSJIVkvryvttYyYVvpZ27910wd8wv8iCsNOMLlPRu/s1080/39_Girl-DP-Sohohindi.in_.jpeg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Janifer Daniel',
                              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Fifty minutes ago',style: TextStyle(fontSize: 15,color: Color(0xffc0bfc6)),),
                            SizedBox(
                              width: 120,
                            ),
                            Icon(CupertinoIcons.heart,size: 25,),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.textsms_outlined,size: 25,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
