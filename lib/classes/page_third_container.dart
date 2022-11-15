import 'package:flutter/material.dart';
class ThirdPageContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const ThirdPageContainer({Key? key,required this.text1,
    required this.text2,required this.text3,
    required this.text4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 110,width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(

            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Image(image:
                      AssetImage('images/fsst.png'),
                        height: 80,width: 85,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(text1,style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                          SizedBox(height: 5,),
                          Text(text3,style: TextStyle(
                            color: Colors.grey,fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),),
                        ],),

                      SizedBox(height: 10,),

                      Column(
                        children: [
                          Text(text2,style: TextStyle(
                            color: Color(0xffFF9340),fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),),
                          SizedBox(height: 5,),
                          Text(text4,style: TextStyle(
                            color: Colors.grey,fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),),

                        ],
                      ),


                    ],),
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
