import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/pages/images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: login(),
    routes: {
      '/images':(context)=>images()
    },);
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
  TextEditingController submitctr=TextEditingController();
  FocusNode namefs=FocusNode();
  FocusNode phonefs=FocusNode();
  FocusNode submitfs=FocusNode();

  @override
  Widget build(BuildContext context) {
    final node=FocusScope.of(context);
    return Scaffold(
      body: SafeArea(

          child: Center(
            child: Container(

              child: SingleChildScrollView(

                child: Column(
                  children: [
                    Container(
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
                            Container(
                              child: Text('Welcome',style: TextStyle(
                                fontFamily: 'GeraldinePersonalUse',
                                fontWeight: FontWeight.w500,
                                fontSize: 70.0,
                              ),),
                            ),
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
                                controller: phonectr,
                                focusNode: phonefs,
                                onEditingComplete: (){
                                  node.nextFocus();
                                },
                                style: TextStyle(
                                  fontSize: 30,fontWeight: FontWeight.w400,
                                    fontFamily: 'GraySkin'
                                ),

                                keyboardType: TextInputType.number,
                                maxLength: 10,
                                decoration:InputDecoration(hintText:'Phone'),

                              ),
                            ),
                           Container(
                             padding: EdgeInsets.only(bottom: 30),
                             child: ElevatedButton
                               (
                               // controller: submitctr,
                               focusNode: submitfs,
                               style: ElevatedButton.styleFrom(

                                 backgroundColor:Colors.pink[300],
                                 foregroundColor: Color(0xffeebd89)
                               ),
                               onPressed:(){
                                 if(namectr.text.length<=0 || namectr.text.trim()==" "){
                                   print('Name feild is empty');
                                   showDialog(
                                       context: context,
                                     builder: ( BuildContext context){
                                       return AlertDialog(title: Text('Alert....'),
                                       content: Text('Please Insert A valid input'),
                                       actions: [
                                       ElevatedButton(onPressed: (){
                                         Navigator.pop(context);

                                       }, child: Text('Yes')),
                                       ElevatedButton(onPressed: (){
                                         Navigator.pop(context);
                                       }, child: Text('No'))
                                       ],);
                                       },
                                       barrierDismissible: false
                                   );

                                 }
                                 else if (phonectr.text.length!=10 || phonectr.text.trim()== " "){
                                   print('Phone feild is empty');
                                   showDialog(
                                       context: context,
                                       barrierDismissible: false,
                                       builder: ( BuildContext context){
                                         return CupertinoAlertDialog(title: Text('Alert....'),
                                           content: Text('Enter the valid phone no'),
                                           actions: [
                                             ElevatedButton(onPressed: (){}, child: Text('Yes')),
                                             ElevatedButton(onPressed: (){
                                               Navigator.pop(context);
                                             }, child: Text('No'))
                                           ],);
                                       }
                                   );
                                 }
                                 else{
                                   //cal api
                                   print('success');
                                 }

                               }, child: Text('Submit',style: TextStyle(
                               fontSize: 20,
                               fontWeight: FontWeight.w700
                             ),),
                             ),
                           ),

                          ],
                        ),
                      ),

                    ),
                    Container(
                      child: GestureDetector(
                        onTap: (){
                          print('Submit button');
                          Navigator.pushNamed(context, '/images');
                        },child: Container(
                        width: 98,
                        // height:20,

                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color(0xffeebd89),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,blurRadius: 8.0,spreadRadius: 5.0,offset: Offset(1.0,2.0)
                              )
                            ]

                        ),
                        child: Center(
                          child: Text('Images',
                            style: (
                                TextStyle(
                                    color: Colors.pink[300],
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20
                                )
                            ),
                          ),
                        ),
                      ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),

    );
  }
}

