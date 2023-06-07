import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = '';


  @override
  void initState() {
    super.initState();
    dropdownValue = list[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    size: 23,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                      color: const Color(0xfff8f6f4),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: TextFormField(
                        cursorColor: Colors.black,
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const Icon(FontAwesomeIcons.sliders, size: 20),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: DropdownButton<String>(
                      underline: const SizedBox(),
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: DropdownButton<String>(
                      underline: const SizedBox(),
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: DropdownButton<String>(
                      alignment: Alignment.centerRight,
                      underline: const SizedBox(),
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      elevation: 16,
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 575,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/map.png'),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      shape: const RoundedRectangleBorder( // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (context) {
                        return SizedBox(
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children:  [
                                const Center(child: Icon(Icons.horizontal_rule,size: 50,color: Color(0xffb2b2b2),)),
                                const Center(child: Text('156 Places to stay',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 320,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: NetworkImage('https://www.biscaynehomes.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Frobins-cove.7ffff8df.jpg&w=3840&q=75'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.star,color: Color(0xffff4164),size: 20,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('4.92',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                    Text('(156)',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff878686)),),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Entire House.Santa Monica',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),)
                              ],
                            ),
                          ),
                        );
                      });
                },
                icon: const Icon(Icons.horizontal_rule,size: 50,color: Color(0xffb2b2b2),),
                // child: const Text(
                //   'Choose Option',
                //   style: TextStyle(fontSize: 24),
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
