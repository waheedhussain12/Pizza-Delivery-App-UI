import 'package:flutter/material.dart';
class PageThirdContainerTwo extends StatelessWidget {
  const PageThirdContainerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
        topRight: Radius.circular(30)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Fees',style: TextStyle(color: Colors.grey,fontSize: 17),),
                  Text('Rs.5.0',style: TextStyle(color:
                  Color(0xffFF9340),fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text('Total Price',style: TextStyle(color: Colors.grey,fontSize: 18),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rs.500.00',style: TextStyle(color:
                Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
              Container(height: 55,width: 150,

              decoration: BoxDecoration(
                color: Color(0xffFF9340),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('Continue',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),

              ),

              ],
            ),


          ],
        ),
      ),
    );
  }
}
