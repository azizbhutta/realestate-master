import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage('https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      right: 30,
                      top: 30.0,
                      child: Icon(
                        CupertinoIcons.suit_heart,
                        color: Colors.white,
                      )),
                   Positioned(
                      left: 30,
                      top: 30.0,
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      )),
                  Positioned(
                    bottom: -30,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCard('https://images.unsplash.com/photo-1575517111478-7f6afd0973db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGhvdXNlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                        _buildCard('https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                        _buildCard('https://images.unsplash.com/photo-1583608205776-bfd35f0d9f83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                        _buildCard('https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 20.0),
                    child: const Text(
                      "Modern House",
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.2,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.share_location,
                      size: 30,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 3,
              ),
               Row(
                children: [
                  const SizedBox(width: 15.0,),
                  const Icon(
                    Icons.location_on,
                    size: 20,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    '2nd St, New York, NY 10003, USA ',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  SizedBox(width: 15.0),
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 25,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  const SizedBox(width: 12.0,),
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
                            "assets/images/home.png",
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "5 Rooms",
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
                            "assets/images/apartment.png",
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "3 Beds",
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
                            "assets/images/land.png",
                            height: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "150 m sq",
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
                          "2 Baths",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15.0,),

              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20.0),
                child: const Text(
                  "Description",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.2,
                      color: Colors.black),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "In publishing and graphic design, Lorem ipsum "
                      "is a placeholder"
                      " text commonly used to demonstrate the visual form of a"
                      " document or a typeface without relying on meaningful",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600),
                ),
              ),

              const SizedBox(height: 20.0,),

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String imagePath) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
            fit: BoxFit.fill,
          image: NetworkImage(imagePath)
        )
      ),
    );
  }
}
