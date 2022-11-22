//dart=2.9
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

void main() {
  runApp( AppAKS());
}
class AppAKS extends StatelessWidget {
  const AppAKS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData.light()   ,
        home:  AppAK());
  }
}

class AppAK extends StatefulWidget {
  const AppAK({Key? key}) : super(key: key);

  @override
  State<AppAK> createState() => _AppAKState();

}

class _AppAKState extends State<AppAK> {
//  TextEditingController namectr=TextEditingController();
  // TextEditingController phonectr=TextEditingController();
  // FocusNode namefs=FocusNode();
//  FocusNode phonefs=FocusNode();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: NewGradientAppBar(

        // backgroundColor: Color(0xffd13abd),
        // foregroundColor: Color(0xffeebd89),
        gradient: LinearGradient(
            colors: [
              const Color(0xffeebd89),
              const Color(0xffd13abd),
              const Color(0xffeebd89),


            ]
        ),
        title: Text('Tasks',
          style:
          TextStyle(
            fontFamily: 'GameOfSquids',
            color: Color(0xffeebd89),
        fontSize: 25,
        fontWeight: FontWeight.w800),),

        leading: IconButton(
          // color: Color(0xffeebd89),
          icon: Icon(Icons.accessibility_outlined,size: 45,),
          onPressed: () {},),
        actions: [


          IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 25,),),
          IconButton(onPressed: () {},
              icon: Icon(Icons.notifications_active_outlined,size: 25)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_sharp,size: 25)),
        ],
        flexibleSpace: SafeArea(
          child: Icon(Icons.catching_pokemon_sharp, size: 68.0, color: Color(0xffeebd99),
          ),

        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      const Color(0xffeebd89),
                      const Color(0xffd13abd),
                      const Color(0xffeebd78)


                    ]
                )
            ),

            height: 48.0,


            alignment: Alignment.center,
            child: Icon(Icons.camera_alt,color: Colors.white70,),
            // child: Text('Bottom',
            //   style: TextStyle(
            //     color: Color(0xffeebd89),
            //     fontSize: 30,
            //     fontWeight: FontWeight.w500,
            //
            //   ),
            // ),

            // child: TabPageSelector(controller: _tabController),
          ),

        ),

      ),


      body: SafeArea(

        child: SingleChildScrollView(

          child: Column(
            children: [
              layoutOne(context),
              Divider(
                height: 10.0,
                color: Colors.red,

              ),
              layouTwo(context),
              Divider(
                height: 10.0,
                color: Colors.red,

              ),
              layoutThree(context),
              Divider(
                height: 10.0,
                color: Colors.red,

              ),
              layoutFour(context),
              Divider(
                height: 10.0,
                color: Colors.black,

              ),
              layoutFive(context),
              Divider(
                height: 10.0,
                color: Colors.black,

              ),




              layoutCard(context),
              Divider(
                height: 30.0,
                color: Colors.black,

              ),


            ],
          ),
        ),
      ),

    );
  }
}



  layoutOne(BuildContext context) {
  return Container(
    
    height: 690,
    color: Color(0xfffcc435),
    child :Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
           padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.cyan,
              ),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(margin: EdgeInsets.all(10),
                height: 150,
                width: 150,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.deepPurpleAccent,
              ),
            ],
          ),
          ])
            ,
        ),
        Container(
          child: Text("Welcome",style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w600,
            color: Colors.indigo
          ),),
        ),
        Container(height: 20,

          color: Colors.indigoAccent,
          child: Text('                     ',
          ),
        ),

        Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 50,left:50),

              child: Text(''
                  'Best app for Shopping Products Online ',style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent
              ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 50,left:50,bottom: 40),

              child: Text(
                  'Get Amazing Discount',style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent
              ),
              ),
            ),
          ],
        ),
      ],


    ),

  );

  }
layouTwo(BuildContext context) {
  return SafeArea(
    child:Column(
      children: [
        Container(

          height: 690,
          width: 500,
          color: Colors.blue,
          child: Container(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top:150,bottom: 150,left: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Row(

                    children: [
                      Text('Contact Us',style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          color: Colors.white70
                      ),),
                    ],
                  ),
                  Row(

                    children: [
                      Text('+91 9144040888',style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white70
                      ),),
                    ],
                  ),
                  Row(

                    children: [
                      Text('ecscloud.com',style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white70
                      ),),
                    ],
                  ),
                  Row(

                    children: [
                      Text('www.ecscloudinfotech.com',style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white70
                      ),),
                    ],
                  ),

                ],
              ),
            ),
          ),


        ),
        Container(

          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 220,
                    color: Colors.blue,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    color: Colors.white70,
                  ),
                ],
              ),

            ],
          ),

        )
      ],
    ),
  );
}
  layoutThree(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 30),
    height: 690,
    color: Colors.indigoAccent[700],
    child :Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 300,
           width: 340,
           color: Colors.white,
           padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: const Text('B',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white
                  ),),
                ),
                height: 60,
                width: 50,
                color: Colors.indigo,
              ),
              Container(
                child: Center(
                  child: const Text('A',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white
                  ),),
                ),
                height: 60,
                width: 50,
                color: Colors.indigo,
              ),
              Container(
                child: Center(
                  child: const Text('S=',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.white
                  ),),
                ),
                height: 60,
                width: 50,
                color: Colors.indigo,
              ),
            ],


          ),


          Row(

            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 90, 20, 0.0),
                child: Column(

                  children: [
                    Text("Computer",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400
                    ),),
                    Text("Services",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400
                    ),),

                  ],
                ),
              )
            ],


          ),
          ])
            ,
        ),
        Container(
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // child: Center(
                //   child: const Text('B',style: TextStyle(
                //       fontWeight: FontWeight.w700,
                //       fontSize: 30,
                //       color: Colors.white
                //   ),),
                // ),
                height: 60,
                width: 50,
                color: Colors.white,
              ),
              Container(
                // child: Center(
                //   child: const Text('B',style: TextStyle(
                //       fontWeight: FontWeight.w700,
                //       fontSize: 30,
                //       color: Colors.white
                //   ),),
                // ),
                height: 60,
                width: 50,
                color: Colors.white,
              ),
              Container(
                // child: Center(
                //   child: const Text('B',style: TextStyle(
                //       fontWeight: FontWeight.w700,
                //       fontSize: 30,
                //       color: Colors.white
                //   ),),
                // ),
                height: 60,
                width: 50,
                color: Colors.white,
              ),

            ],


          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 50),
          child: Text("Welcome",style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w600,
            color: Colors.white
          ),),
        ),



      ],


    ),

  );

  }


  layoutFour(BuildContext context) {
    return Container
      (

      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      height: 690,
      width: 700,
      // color: Colors.purple[500],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Row(
          children: [
            Container(
              child: Text('Reason 1',style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 35.0,
            ),

            ),


            ),
          ],
        ),


        Column(
          children: [
            Container( child: Text(' why is"now" is the best time for your company to raise and do to the next level'
              ,style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ],
        ),
         Row(

           children: [
             Container(child: Text('Reason 2',style: TextStyle(
               fontWeight: FontWeight.w500,
               fontSize: 35.0,
             ),
             ),

             ),
           ],
         ),
             Column(
               children: [
                 Container( child: Text(' why is"now" is the best time for your company to raise and do to the next level'
                 ,style: TextStyle(
                     fontSize: 15.0,
                     fontWeight: FontWeight.w500,
                   ),),
                 ),
               ],
             ),

         Center(
           child: SizedBox(
               width:200.0,
               height: 50.0,
               child: ElevatedButton(onPressed: () { print('ddd');}, child: Text('Submit') )),
         ),
    ]


          ),
        );


  }

  layoutFive(BuildContext context) {

    return Container(
      width: 700,
    height: 690,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 100,
        child: Column(
          children: [
            Text('Competitive Advantages'
            ,style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w700,
                fontSize: 33,
              ),
            ),
          ],
        ),
      ),

      Row(

          children: [
              Container(
                width: 150,
                 height: 200,
                child: Column(
                  children: [
                    Row(

                      children: [
                        Text('Advantage 1',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,

                        ),),
                      ],
                      ),

                  Column(
                  children: [
                  Text('why is"now" is the best time for your company to raise and do to the next level'),
                   ],

            ),
                  ],
                ),
              ),
            Container(
              width: 150,
              height: 200,

              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Advantage 1',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('why is"now" is the best time for your company to raise and do to the next level'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      Row(
        children: [
          Container(
            width: 150,
            height: 200,
            child: Column(
              children: [
                Row(

                  children: [
                    Text('Advantage 1',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
                    )
                  ],
                ),

                Column(
                  children: [
                    Text('why is"now" is the best time for your company to raise and do to the next level'),
                  ],

                ),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 200,

            child: Column(
              children: [
                Row(
                  children: [
                    Text('Advantage 1',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),)
                  ],
                ),
                Column(
                  children: [
                    Text('why is"now" is the best time for your company to raise and do to the next level'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),




    ],

  ),

  );
  }

  layoutCard(BuildContext context) {
     TextEditingController namectr=TextEditingController();
//    TextEditingController phonectr=TextEditingController();
    FocusNode namefs=FocusNode();
// FocusNode phonefs=FocusNode();
    final node=FocusScope.of(context);
    return

       Container(
         height: 690,
         padding: EdgeInsets.only(top: 150,bottom: 150),
         margin: EdgeInsets.all(10.0),
         child: SafeArea(


            child: Padding(

              padding: const EdgeInsets.all(1.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          //   const Color(0xff3366ff),
                          // const Color(0xff00ccff),
                          const Color(0xffeebd89),
                          const Color(0xffd13abd),
                          //  const Color(0xffccfbff),
                          // const Color(0xffef96c5),
                        ]
                    )
                ),
                /*  decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0)),
                              boxShadow: [BoxShadow( color: Colors.grey,spreadRadius: 10,blurRadius: 10)

                            ]
                          ),
*/
                child: Card(
                  elevation: 10.0,
                  color: Colors.white70,
                  margin: EdgeInsets.all(10.0),
                  //color: Colors.red,
                  child: Column(
                    children: [
                      Text('Welcome',style: TextStyle(
                        fontFamily: 'GeraldinePersonalUse',
                        fontWeight: FontWeight.w500,
                        fontSize: 70.0,
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(

                          controller: namectr,
                          focusNode: namefs,
                           onEditingComplete: (){
                             node.nextFocus();
                           },
                          style: TextStyle(
                              fontSize: 30,fontWeight: FontWeight.w400,
                              fontFamily: 'GraySkin'
                          ),
                          keyboardType: TextInputType.name,
                          maxLength: 30,
                          decoration:InputDecoration(hintText:'Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 30,fontWeight: FontWeight.w400,
                              fontFamily: 'GraySkin'
                          ),
                         // controller: phonectr,
                         // focusNode: phonefs,
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration:InputDecoration(hintText:'Phone'),

                        ),
                      ),
                      ElevatedButton
                        (
                        style: ElevatedButton.styleFrom(
                            backgroundColor:Colors.pink[300],
                            foregroundColor: Color(0xffeebd89)
                        ),
                        onPressed:(){ print('Submitted');}, child: Text('Submit',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),),
                      ),
                    ],
                  ),
                ),
    ),
            ),
          ),
       );



  }




