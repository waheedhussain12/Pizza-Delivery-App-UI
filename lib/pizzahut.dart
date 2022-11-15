import 'package:flutter/material.dart';
class PizzaHut extends StatelessWidget {
  const PizzaHut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            backgroundImage: AssetImage('images/pizzahut.png',),

          ),
          title: Text('Pizzahut Pizza',style:
          TextStyle(color: Colors.black,fontSize:
          16,fontWeight: FontWeight.bold),),
          subtitle: Text('FairField',style: TextStyle(color: Colors.grey,fontSize: 15,),),
          trailing: Icon(Icons.more_horiz_outlined),
        ),
      ),

    );
  }
}
