import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  bool isChecked = false;
  String? Email;

  TextEditingController _Password = TextEditingController();
  final FocusNode emailfocusnode = FocusNode();
  final FocusNode passwordfocusnode = FocusNode();
  bool _obscureText=true;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void _emailEditingComplete(){
    FocusScope.of(context).requestFocus(passwordfocusnode);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //   routes: {
      //   '/pagetwo': (context) => PageTwo(),
      //},
      //onGenerateInitialRoutes: (setting){}

      debugShowCheckedModeBanner: false,
      title: 'Sign-in',
      theme: ThemeData(
       primarySwatch: Colors.indigo,
        // backgroundColor:const Gradient(colors:[Colors.blue,Colors.green]),
        primaryColor: Colors.black,
        brightness: Brightness.light,
        fontFamily: 'BubblegumSansRegular',
        floatingActionButtonTheme:
        const FloatingActionButtonThemeData(foregroundColor: Colors.black),
        dividerColor: Colors.black12,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          toolbarOpacity: 1,
          elevation: 0,
          leading: IconButton(onPressed: (){

          },icon: Icon(Icons.arrow_back_ios_sharp),
            color: Colors.black,),
        ),
        body:
        Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child:
                          Image.asset('image/login_1.png')),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(140, 15, 0, 0),
                              child: Text('SignIn',style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                        child: TextFormField(
                          focusNode: emailfocusnode,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.alternate_email_rounded),
                            labelText: 'Email',
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(top: 0), // add padding to adjust icon
                             // child: Icon(Icons.email_outlined),
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty)
                              {
                                return "please enter email";
                              }
                            if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]").hasMatch(value))
                              {
                                return "please enter Proper Email";
                              }
                            return null;
                          },
                          onSaved: (String? Email){
                            Email =Email;
                          },
                          onEditingComplete: _emailEditingComplete,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                        child: TextFormField(
                          controller: _Password,
                          focusNode: passwordfocusnode,
                          obscureText: _obscureText,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                              labelText: 'Password',
                            suffixIcon: GestureDetector(
                              onTap: (){
                                setState(
                                        (){
                                      _obscureText = ! _obscureText;
                                    }
                                );

                              },
                              child: Icon(
                                  _obscureText ? Icons.visibility_off : Icons.visibility
                              ),
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty)
                            {
                              return "please enter password";
                            }
                            if(value.length < 8){
                              return "password must be atleast 8 character";
                            }
                            return null;
                          },
                          onSaved: (String? Email){
                            Email =Email;
                          },
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Checkbox(
                                // checkColor: Color(0xfffdb11b),
                                checkColor:Color(0xff8bdeea),
                                activeColor: Color(0xff053F5C) ,
                                value: isChecked,
                                onChanged: (bool? value) {
                                  isChecked = value!;
                                },
                              ),
                            ),
                            Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text("Remember Me",
                                  style: TextStyle(
                                    fontSize: 16,
                                    //color: Colors.indigo
                                  ),),),
                            Container(
                              padding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/forget_page');

                                  print("pressed");
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.cyanAccent[600]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      Container(
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize: const Size.fromHeight(0),
                            ),
                            child: const Text('Sign In'),
                            onPressed: () {
                              if(_formkey.currentState!.validate())
                                {
                                  return ;
                                }
                              else{
                                print("unsucessful email and password");
                              }
                            },
                          )
                      ),
                    /*  Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text("-------------------------------OR------------------------------",style: TextStyle(
                            fontSize: 18),),
                      ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height:3,
                            width: 150,
                            child: const ColoredBox(
                              color: Colors.black54,
                            )
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Text("OR",style: TextStyle(
                                fontSize: 16),),
                          ),
                          Container(
                              height:3,
                              width: 150,
                              child: const ColoredBox(
                                color: Colors.black54,
                              )
                          ),
                        ],
                      ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Image.asset("image/Google icon1.png"),
                              ),
                               Container(
                                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Text("Sign In with",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 12)),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                 child: TextButton(onPressed: (){
                                  print("Clicked Google");
                                  }, child: Text("Google",style: TextStyle(
                                    color: Colors.indigoAccent,fontSize: 12
                                  ),),
                                  ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: Image.asset("image/facebook1.png"),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(3,0, 0, 0),
                                    child: Text("Sign In with",
                                      style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: TextButton(onPressed: (){
                                     print("Clicked Facebook");
                                    }, child: Text("Facebook",style: TextStyle(
                                        color: Colors.indigoAccent,fontSize: 12
                                    ),),
                                    ),
                                  ),
                                ],
                              ),
                      ],
                          ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("New to Trucklah?",style: TextStyle(
                                color: Colors.black54,fontWeight:FontWeight.bold))
                          ),
                          TextButton(onPressed: (){
                            Navigator.pushReplacementNamed(context, '/sign_up');
                            print("pressed");
                          }, child: Text("Register",style: TextStyle(
                            color: Colors.indigo,
                          ),
                          )
                          )

                          // Container(child:
                          //   TextButton(onPressed: (){},),
                          // )
                        ],
                      ),
                        ],
            ),
            ),
          ),
        ),
      ),
    );
  }
}
