import 'package:flutter/material.dart';
import 'package:foodapp/pages/snd_page.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     // backgroundColor: Color(0xffFF7F9FC),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [

                     Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('pizzza',style: TextStyle(
                             fontSize: 20,fontWeight: FontWeight.bold,
                           color: Color(0xffFF9340)
                         ),),
                       ],
                     ),
                    SizedBox(height: 90,),
                    Container(
                      height: 300,width: 300,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        image: DecorationImage(

                            image: AssetImage('images/pf.png')),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orange,blurRadius: 35,
                            blurStyle: BlurStyle.outer,),],),
                    ),
                    SizedBox(height: 60,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Order pizzza\nfrom any where',style: TextStyle(
                              color: Color(0xff212226),fontSize: 40,fontWeight: FontWeight.bold
                            ),),

                          ],
                        ),
                        SizedBox(height: 30,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text('The delicious food in now your fingertip,',style: TextStyle(
                             color: Colors.grey,fontSize: 16,
                           ),),
                           Text('Just click and order & enjoy.',style: TextStyle(
                             color: Colors.grey,fontSize: 16,
                           ),),

                         ],
                       )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Get Started',style: TextStyle(
                          color:Color(0xff212226),fontSize: 16,
                        ),),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScndPage()));
                          },
                          child: Container(
                            height: 55,width: 130,
                            decoration: BoxDecoration(
                              color: Color(0xffFF9340),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(
                              child: Text('Continue',style: TextStyle(
                                fontSize: 15,color: Colors.white
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
