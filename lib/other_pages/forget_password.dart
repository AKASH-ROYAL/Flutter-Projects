        import 'package:flutter/cupertino.dart';
        import 'package:flutter/material.dart';



/*        class MyApp extends StatelessWidget {


          @override
          Widget build(BuildContext context) {
            return MaterialApp(routes: {
              '/home':(context)=>forgotpage(),
              '/verification':(context)=>otpPage(),
              '/changepass':(context)=>changePass()
            },

              theme: ThemeData(
                primarySwatch: Colors.blueGrey, //here is where the error resides
              ),
              debugShowCheckedModeBanner: false,
              home: forgotpage(),
            );
          }
        }*/
        class forgetpage extends StatefulWidget {
               @override
          State<forgetpage> createState() => _forgetpageState();
        }

        class _forgetpageState extends State<forgetpage> {
          String? _email;

          final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
          TextEditingController emailctr = TextEditingController();
          FocusNode emailfs = FocusNode();
          FocusNode sendfs = FocusNode();

          @override
          Widget build(BuildContext context) {
            final node=FocusScope.of(context);
            return Scaffold(
              backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          toolbarOpacity: 1,
          elevation: 0,
          leading: IconButton(onPressed: (){

          },icon: Icon(Icons.arrow_back_ios_sharp),
            color: Colors.black,),
        ),
              body: SafeArea(
                  child: SingleChildScrollView(
                    child: Container(
                     padding: const EdgeInsets.fromLTRB(30, 00, 30, 30),

                      child: Form(
                        key: _formkey,
                        child: Column(

                          children: [
                            Container(
                              child: Image.asset("image/forgot_page_image-removebg-preview (1).png",
                                // height: MediaQuery.of(context).size.width,
                                // width: MediaQuery.of(context).size.width,
                                height: 250,
                                width: 300,
                                fit: BoxFit.fill,

                              ),

                            ),

                            Row(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 30,8 , 0),
                                  child: Text("Forgot Password?",style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                )],
                            ),
                           /* Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 0,8 , 0),
                                  child: Text("Password?",style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                )],
                            ),*/
                            Row(
                              children: [
                                Container(
                                  child: Icon(Icons.alternate_email,color: Colors.black26,),
                                ),

                                   Expanded(
                                     child: Container(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'e-mail / Mobile number',
                                        ),
                                      onEditingComplete:(){
                                          node.nextFocus();
                                      },
                                      validator: (value){
                                          if(value!.isEmpty){
                                            return "* Please enter email";
                                          }
                                          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]").hasMatch(value)){
                                              return "* Please enter valid Email";
                                          }
                                          return null;
                                      },/*
                                        onSaved: (email){
                                          email = email;
                                        },*/
                                      ),

                                  ),

                                   ),
            ]
            ),

                                Row(
                                  children: [
                                    Expanded(

                                      child:Container(
                                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                                        child: ElevatedButton(
                                          onPressed: (){
                                            if(_formkey.currentState!.validate()){
                                             Navigator.pushNamed(context, "/otp_page");

                                            }
                                            else{
                                              print("unSuccessful");
                                            }

                                          },
                                          child: Text("Send",style: TextStyle(
                                            fontSize: 20,
                                          ),

                                          ),
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                            primary: Color(0xFF36517e),
                                            elevation: 1,
                                            shadowColor: Colors.black,
                                          ),
                                        ),
                                      ),

                                    ),
                                  ],

                            ),

                            TextButton(
                              onPressed: () {
                                print("pressed");
                              },
                              child: Text(
                                '< Back to Signin',
                                style: TextStyle(color: Colors.grey[700]),

                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  )

              ),
            );
          }
        }
