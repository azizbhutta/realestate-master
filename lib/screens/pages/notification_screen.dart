import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model/user_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Person> person = List.of(data.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff64d8d7),
        automaticallyImplyLeading: false,
        title: const Text('Notification',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(
          itemCount: person.length,
          itemBuilder: (context, index){
            return Slidable(
                endActionPane: ActionPane(
                  motion: const BehindMotion(),
                  children: [
                    SlidableAction(
                        label: 'Reject',
                        icon:FontAwesomeIcons.circleXmark,
                        backgroundColor: const Color(0xfffe9da6),
                        onPressed: (context)=>{}
                    ),
                    SlidableAction(
                        label: 'Accept',
                        icon:FontAwesomeIcons.circleCheck,
                        backgroundColor: const Color(0xff64d8d7),
                        onPressed: (context)=>{}
                    ),
                  ],
                ),
                child: listTile(index)) ;
          }, separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
  listTile (int  index) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(person[index].photoUrl),
              fit: BoxFit.cover
          ),
        ),
      ),
      title: Row(
        children: [
          Text(person[index].name,style: const TextStyle(color: Color(0xffbdb9bc),fontWeight: FontWeight.bold,fontSize: 20),),
          const SizedBox(
            width: 5,
          ),
          Text(person[index].description,style: const TextStyle(fontSize: 14,color: Color(0xffc9c9c9)),),
        ],
      ),
      subtitle: Text(person[index].time,style: const TextStyle(color: Color(0xffd5d5d5),fontSize: 12),),
    );
  }
}


