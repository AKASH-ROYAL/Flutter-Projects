
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class images extends StatefulWidget {
   const images({Key? key}) : super(key: key);

   @override
   State<images> createState() => _imagesState();
 }

 class _imagesState extends State<images> {
   bool isvisible=false;

   @override
   Widget build(BuildContext context) {
     return Scaffold(

       appBar: AppBar(
         title: Center(
           child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.image_search_sharp),
               label: Text('Images Search')),
         ),
       ),
       body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Container(

                 color: Colors.grey[200],
                 height: 300,
                 child: SingleChildScrollView(
                   scrollDirection:Axis.horizontal ,
                     child: Row(
                       children: [
                         Image.asset("images/images.jpg",
                         // color: Colors.yellow,
                         // color: Colors.yellow,
                         //     colorBlendMode: BlendMode.darken,
                         ),
                         Divider(height: 40,
                         thickness: 40,
                         color: Color(0xffffffff),),
                          // Spacer(
                          //   flex: 9,
                          //
                          // ),
                         Image.asset("images/images (9).jpg"),
                         Image(image: AssetImage("images/images (9).jpg"),),
                         Divider(height: 40,
                           color: Color(0xffffffff),),

                         // Spacer(),
                         Image.asset("images/images (2).png"),
                         Divider(height: 40,
                           color: Color(0xffffffff),),

                         // Spacer(),
                         Image.asset("images/images (7).jpg"),
                         Divider(height: 40,
                           color: Color(0xffffffff),),

                         Image.asset("images/images (8).jpg"),
                       ],
                     ),
                   ),
               ),
               Container(
                 child: myloop(),
               ),
               Container(

                 height: 50,
                 width: 400,
                 color: Colors.indigo,
                 // child: isvisible? Center(child: Text('yes')):Center(child: Text('no')),

                   child: Center(child: myfunc1()),
                        ),


               Container(
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [

                        Divider(
                          thickness: 60,
                          color: Colors.red,


                        ),
                        Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                          height: 450,
                          width: 490,
                                       color: Colors.grey[200],
                          colorBlendMode: BlendMode.color,
                          loadingBuilder: ( context,child,progress){
                          return progress ==null ?child:const CircularProgressIndicator();
                        },),
                        Image.network('https://gadgetstouse.com/wp-content/uploads/2020/10/Realme-SuperDart.png',
                          height: 450,
                          width: 490,
                                       color: Colors.grey[200],
                          colorBlendMode: BlendMode.color,
                          loadingBuilder: ( context,child,progress){
                          return progress ==null ?child:const CircularProgressIndicator();
                        },),
                        Container(
                          color: Colors.grey[200],

                          child: Image(image: NetworkImage(
                            'https://picsum.photos/250?image=9',


                          ),
                            loadingBuilder: ( context,child,progress) {
                              return progress == null ? child : const LinearProgressIndicator();
                            },
                            height: 450,
                            width: 429,
                            color: Colors.red,
                            colorBlendMode: BlendMode.darken,
                          ),
                        ),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         ),
         ),

     );
   }
   Widget myfunc1(){
     if(isvisible==true){
       return const Text('Yes');
     }
     else{
       return const Text('No');
     }

   }

   myloop() {
     var r = new Random();
     var x;
     var t=r.nextInt(50);
     print(t);
     for (x = 7; x < 10; x++)
       return Text( x.toString(),style: TextStyle(
         fontSize: 45,
         fontWeight: FontWeight.w500
       ),  );
        }
 }
