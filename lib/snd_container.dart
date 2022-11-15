import 'package:flutter/material.dart';
import 'package:foodapp/third_page.dart';
class SndContainer extends StatelessWidget {
  const SndContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,width: 300,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(

          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 34,
              backgroundImage: AssetImage('images/do.png',),

            ),
            title: Text('Domino Pizza',style:
            TextStyle(color: Colors.black,fontSize:
            16,fontWeight: FontWeight.bold),),
            subtitle: Text('FairField',style: TextStyle(color: Colors.grey,fontSize: 15,),),
            trailing: Icon(Icons.more_horiz_outlined),
          ),
        ),

      ),
    );
  }
}
