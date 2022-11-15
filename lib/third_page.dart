import 'package:flutter/material.dart';
import 'package:foodapp/classes/page_third_container.dart';
import 'package:foodapp/classes/page_third_container_two.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6FAFF),
       body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 30),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Back',style: TextStyle(color: Colors.black54,fontSize: 18),),
                 Icon(Icons.food_bank_sharp,size: 30,),
               ],
             ),
           ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
               child: Text('Cart',style: TextStyle(color: Colors.black,
                   fontSize: 35,fontWeight: FontWeight.bold),),
             ),
        SizedBox(height: 18,),
        ThirdPageContainer(text1: 'Cheese Pizza',text2: 'Rs.670',text3: 'Medium',text4: '1x',),
             ThirdPageContainer(text1: 'Bacon Pizza',text2: 'Rs.850',text3: 'Large',text4: '2x',),
             ThirdPageContainer(text1: 'Shrimp Pizza',text2: 'Rs.1500',text3: 'Large',text4: '4x',),
             SizedBox(height: 50,),
             Divider(height: 3,thickness: 0.8,indent: 20,endIndent: 20,),
               SizedBox(height:40,),



             Expanded(

                 child: PageThirdContainerTwo()),
           ],
         ),
       ),
    );
  }
}