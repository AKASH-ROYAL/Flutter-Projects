import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: login(),);
  }
}
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController namectr=TextEditingController();
  TextEditingController phonectr=TextEditingController();
  FocusNode namefs=FocusNode();
  FocusNode phonefs=FocusNode();

  @override
  Widget build(BuildContext context) {
    final node=FocusScope.of(context);
    return Scaffold(
      body: SafeArea(

          child: Center(
            child: SingleChildScrollView(

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
                          controller: phonectr,
                          focusNode: phonefs,
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
                       onPressed:(){}, child: Text('Submit',style: TextStyle(
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
        ),

    );
  }
}

