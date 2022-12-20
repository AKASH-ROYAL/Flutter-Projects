/*
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';


class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  Map data ={};
  int currentlevel= 01;
  String time= "";

  @override
  Widget build(BuildContext context) {
   data =  ModalRoute.of(context)?.settings.arguments as Map;
   print(data);

    return        Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: NewGradientAppBar(
          gradient: LinearGradient(
             colors:[
               const Color(0xFF424242),
               const Color(0xffd13abd),

        ]),
          elevation: 0.0,

*/
/*leading: IconButton(onPressed: (){
  Navigator.pushNamed(context, '/loading');
}, icon: Icon(Icons.arrow_back),*/
/*

// ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/loading');
          }, icon: Icon(Icons.watch_later_rounded))
        ],
          title: Text(
            'ID - Details'
          ),
          centerTitle: true,

        ),
     body: SingleChildScrollView(
       child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Center(
               child: CircleAvatar(
                 backgroundImage: AssetImage('images/images (10).jpg'),
                 radius: 50,
               ),
             ),
             Divider(
               height: 60,
               color: Colors.grey[800],

             ),
             Text(('Name :'),style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color:Colors.grey,
               letterSpacing: 2.0

             ),),
             SizedBox(
               height: 10,
             ),
             Text(('Akash'),style: TextStyle(
               fontSize: 28,
               // fontWeight: FontWeight.w500,
               color:Colors.orange[200],
               letterSpacing: 2.0

             ),),
             SizedBox(
               height: 30,
             ),
             Text(('ID Number :'),style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500,
                 color:Colors.grey,
                 letterSpacing: 2.0

             ),),
             SizedBox(
               height: 10,
             ),
             Text(('005'),style: TextStyle(
                 fontSize: 28,
                 // fontWeight: FontWeight.w500,
                 color:Colors.orange[200],
                 letterSpacing: 2.0

             ),),
             SizedBox(
               height: 30,
             ),
             Container(

               child: time.length<1?Container(
                 height: 0,width: 0,
               ): Column(
                 children: [
                   Text(('Current time :'),style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w500,
                       color:Colors.grey,
                       letterSpacing: 2.0

                   ),),
                   SizedBox(
                     height: 10,
                   ),
                   Text(('$time'),style: TextStyle(
                       fontSize: 28,
                       // fontWeight: FontWeight.w500,
                       color:Colors.orange[200],
                       letterSpacing: 2.0

                   ),),
                   SizedBox(
                     height: 30,
                   ),
                 ],
               ),
             ),
             Text(('Current Level :'),style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500,
                 color:Colors.grey,
                 letterSpacing: 2.0

             ),),
             SizedBox(
               height: 10,
             ),
             Text(('$currentlevel'),style: TextStyle(
                 fontSize: 28,
                 // fontWeight: FontWeight.w500,
                 color:Colors.orange[200],
                 letterSpacing: 2.0

             ),),
             SizedBox(
               height: 30,
             ),
             Row(
               children: [
                 Icon(Icons.email,
                 color:Colors.grey[400]
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Text('macow565@gmail.com',style:
                   TextStyle(
                     color: Colors.grey[400],
                     fontSize: 18.0,
                     letterSpacing: 1.0
                   ),)


               ],
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Align(
                   alignment: Alignment.bottomRight,
                   child: FloatingActionButton(
                     child: Container(
                       height: 60,
                       width: 60,

                       child: Icon(Icons.one_k_plus_rounded),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors:[
                                 const Color(0xffd13abd),
                                 const Color(0xFF424242),

                               ]
                           )
                       ),
                     ),
                     onPressed: (){
                       // Navigator.pushNamed(context, '/home');
                       setState(() {
                         currentlevel+=1;
                       });
                     },
                   ),
                 ),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: FloatingActionButton(
                     child: Container(
                       height: 60,
                       width: 60,

                       child: Icon(Icons.watch_later_outlined),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors:[
                                 const Color(0xffd13abd),
                                 const Color(0xFF424242),

                               ]
                           )
                       ),
                     ),
                        onPressed: () {
                       setState(() {
                         print(data.toString());
                         print(data["time"]);
                         time= data["time"];
                        time= time.substring(11,19);
                         print(time);
                       });

                        }


    ),
                 ),
              */
/*   Align(
                   alignment: Alignment.topRight,
                   child: Container(
                     height: 60,
                     width: 60,
                     child: IconButton(  tooltip:"print time",

                              onPressed: (){
                       print(data.toString());
                     print(data["time"]);

                   }, icon: Icon(Icons.watch_later_outlined),
                                ),
                   ),
                 ),*/
/*

                 SizedBox(
                   height: 10,
                 ),
                 Align(
                   alignment: Alignment.topRight,
                   child: FloatingActionButton(
                     child: Container(
                       height: 60,
                       width: 60,
                       child: Icon(Icons.home),
                       decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors:[
                                 const Color(0xffd13abd),
                                 const Color(0xFF424242),

                               ]
                           )
                       ),
                     ),
                     onPressed: (){
                        Navigator.pushNamed(context, '/home');

                     },
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     ),


      // floatingActionButton: FloatingActionButton(
      //   child: Container(
      //     width: 60,
      //     height: 60,
      //     child: Icon(Icons.home),
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       gradient: LinearGradient(
      //         colors:[
      //           const Color(0xffd13abd),
      //           const Color(0xFF424242),
      //
      //         ]
      //       )
      //     ),
      //
      //
      //
      //
      // ),
      //   onPressed: (){
      //     Navigator.pushNamed(context, '/home');
      //   },
      // ),

    );
  }
}



*/
