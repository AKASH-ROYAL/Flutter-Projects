
import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';


class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final  _formkey = GlobalKey<FormState>();
  double _headerHeight = 100;
  bool isChecked = false;
  String? password;
  bool _obscureText=true;
  bool _obscureText1=true;
/* late double searchFieldSize;*/

  TextEditingController namectr=TextEditingController();
  TextEditingController emailctr=TextEditingController();
  TextEditingController phonectr=TextEditingController();
  TextEditingController passwordctr=TextEditingController();
  TextEditingController confirmpasswordctr=TextEditingController();
  FocusNode namefs=FocusNode();
  FocusNode emailfs=FocusNode();
  FocusNode phonefs=FocusNode();
  FocusNode passwordfs=FocusNode();
  FocusNode confirmpasswordfs=FocusNode();
  FocusNode  termsfs=FocusNode();
  FocusNode  submitfs=FocusNode();
  FocusNode  _focusNode=FocusNode();

  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        var searchFieldSize = 500;
        setState(() {});
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final node=FocusScope.of(context);

    return Scaffold(
        backgroundColor:   Color(0xff36517e),
        /*      appBar: AppBar(
        backgroundColor: Color(0xff36517e),
        title: Center(
          child: Image.asset(
            "image/trucklahlogo_white.png",
            fit: BoxFit.cover,
            height: 72,
          ),
        ),
toolbarHeight: 70,
         ),*/


/*
        leading: IconButton( onPressed:(){},color: Color(0xff053F5C) , icon: Icon(Icons.arrow_back_ios_sharp),),
*/
/*
      ),
*/
        body: SafeArea(
          child:Form(
            key:_formkey,
            child: Container(
              //  color: Colors.grey[200],
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                        color: Colors.transparent
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    )
                ),
                height: double.infinity,
                child: SingleChildScrollView(
                    child: Column(

                        mainAxisAlignment: MainAxisAlignment.start,

                        children:[
                          /* Container(
                        height: _headerHeight,
                        child: HeaderWidget(_headerHeight, true, Icons.login_rounded,Icons.arrow_back), //let's create a common header widget
                      ),
                    */
                          /*  Padding(
                        padding: const EdgeInsets.only(top:25.0,left: 4),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed:(){},
                              // color: Color(0xff3588CB),
                              color: Color(0xff053F5C),
                              icon: Icon(Icons.arrow_back_ios,size: 40,),),

                          ],
                        ),
                      ),*/

                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.0, 1.0],
                                  colors: [
                                    Color(0xffdfe3fd),
                                    Color(0xffe5eafe),
                                    /* Colors.indigo,
                                  Colors.indigoAccent*/

                                    // Colors.deepPurple.shade400,
                                  ],
                                ),
                                color: Color(0xffdfe3fd),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)
                                )
                            ),
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                            /* child: ColoredBox(


                        //  color: Color(0xffD0C6EA),
                          color: Colors.red,

                        ),*/
                          ),
                          Container(
                            child: Image.asset("image/sign1.png",
                              height: MediaQuery.of(context).size.width-120,

                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,                        ),
                          ),

                          Container(
                            padding: EdgeInsets.fromLTRB(5,6.0,5,0),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(



                                    child: Column(

                                        children: [

                                          Container(
                                            padding: const EdgeInsets.all(4.0),
                                            child: TextFormField(

                                                controller:namectr,
                                                focusNode: namefs,
                                                onEditingComplete: (){
                                                  node.nextFocus();
                                                },
                                                style: TextStyle(
                                                  //  color: Color(0xff053F5C),
                                                  //  color: Color(0xff08285d),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'AleoBold'
                                                ),
                                                keyboardType: TextInputType.name,
                                                // maxLength: 30,
                                                decoration:InputDecoration(
                                                  label: Text('Username'),
                                                  enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black, width: 1.0),
                                                  ),
                                                  /*   focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                 color: Color(0xff36517e),
                                                  width: 3.0),
                                            ),*/
                                                  prefixIcon: Icon(Icons.account_box),

                                                ),
                                                autovalidateMode: AutovalidateMode.onUserInteraction,

                                                validator: MultiValidator([
                                                  RequiredValidator(errorText: "* Required"),
                                                  MinLengthValidator(4,
                                                      errorText: "* Username should be atleast 4 characters"),
                                                  MaxLengthValidator(15,
                                                      errorText:
                                                      "* Password should not be greater than 15 characters")                                              // MinLengthValidator(4,
                                                  //     errorText: "Username Should be above 4 characters"),
                                                  /*  MaxLengthValidator(10,
                                                  errorText:
                                                  "Enter a valid Mobile number")*/
                                                ])
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(4.0),
                                            child: TextFormField(

                                              controller:emailctr,
                                              focusNode: emailfs,
                                              onEditingComplete: (){
                                                node.nextFocus();
                                              },
                                              validator: (value){
                                                if(value!.isEmpty){
                                                  return "* Required";
                                                }
                                                if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]").hasMatch(value)){
                                                  return "* Please enter valid Email";
                                                }
                                                return null;
                                              },
                                              onSaved: (email) {
                                                email = email;
                                              },
                                              style: TextStyle(
                                                //   color: Color(0xff053F5C),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'AleoBold'
                                              ),
                                              keyboardType: TextInputType.emailAddress,
                                              // maxLength: 30,
                                              /*   decoration:InputDecoration(label: Text('Email'),
                                            enabledBorder: UnderlineInputBorder(

                                            ),
                                            prefixIcon: Icon(Icons.alternate_email_rounded),
                                            border: OutlineInputBorder(),
                                          ),*/
                                              decoration:   InputDecoration(
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black, width: 1.0),
                                                ),
                                                /*  focusedBorder: OutlineInputBorder(
                                           borderSide: BorderSide(
                                               color: Color(0xff36517e),//truckl;ah code
                                               width: 3.0),
                                         ),*/
                                                prefixIcon: Icon(Icons.alternate_email_rounded),
                                                label: Text('Email'),
                                              ),


                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(4.0),
                                            child: TextFormField(

                                                controller: phonectr,
                                                focusNode: phonefs,
                                                onEditingComplete: (){
                                                  node.nextFocus();
                                                },
                                                style: TextStyle(
                                                  // color: Color(0xff053F5C),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'AleoBold'
                                                ),
                                                keyboardType: TextInputType.number,
                                                // maxLength: 10,
                                                decoration:InputDecoration(label: Text('Mobile no'),
                                                  enabledBorder: UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black, width: 1.0),
                                                  ),


                                                  prefixIcon: Icon(Icons.call),

                                                ),
                                                validator: MultiValidator([
                                                  RequiredValidator(errorText: "* Required"),
                                                  MinLengthValidator(10,
                                                      errorText: "* Enter a valid Mobile number"),
                                                  MaxLengthValidator(10,
                                                      errorText:
                                                      "* Enter a valid Mobile number")
                                                ])
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(4.0),
                                            child: TextFormField(
                                              obscureText: _obscureText1,

                                              controller:passwordctr,
                                              focusNode: passwordfs,
                                              onEditingComplete: (){
                                                node.nextFocus();
                                              },
                                              style: TextStyle(
                                                //   color: Color(0xff053F5C),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'AleoBold'
                                              ),
                                              keyboardType: TextInputType.visiblePassword,


                                              // maxLength: 10,
                                              decoration:InputDecoration(label: Text('Password'),
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black, width: 1.0),
                                                ),
/*
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff36517e),
                                                  width: 3.0),
                                            ),
*/

                                                /*   suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed: () {
                                      // Update the state i.e. toogle the state of passwordVisible variable
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),*/
                                                suffixIcon: GestureDetector(
                                                  onTap: (){
                                                    setState(
                                                            (){
                                                          _obscureText1 = !_obscureText1;
                                                        }
                                                    );

                                                  },
                                                  child: Icon(
                                                      _obscureText1 ? Icons.visibility : Icons.visibility_off
                                                  ),
                                                ),

                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Icon(Icons.lock),
                                                ),

                                              ),
                                              //  autovalidateMode: AutovalidateMode.onUserInteraction,
                                              /*  onChanged:  (val) => password = val,*/
                                              /*  validator: MultiValidator([
                                              RequiredValidator(errorText: "* Required"),
                                              MinLengthValidator(8,
                                                  errorText: "Password should be atleast 8 characters"),
                                            ])*/
                                              validator: (value){

                                                if(confirmpasswordctr.text.isEmpty) {
                                                  if (value!.isEmpty) {
                                                    return "* Required";
                                                  }
                                                  if (value.length < 8) {
                                                    return "* Password needs to be atleast 8 character";
                                                  }
                                                  else{
                                                    return null;
                                                  }
                                                }

                                                else {
                                                  if (value!.isEmpty) {
                                                    return "* Required";
                                                  }
                                                  if (passwordctr.text !=
                                                      confirmpasswordctr.text) {
                                                    return "* Password do not match";
                                                  }

                                                  if (value!.length < 8) {
                                                    return "* Password needs to be atleast 8 character";
                                                  }

                                                  else{
                                                    return null;
                                                  }
                                                }


                                              },
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(4.0),
                                            child: TextFormField(
                                              obscureText: _obscureText1,

                                              controller:confirmpasswordctr,
                                              focusNode: confirmpasswordfs,
                                              onEditingComplete: (){
                                                node.nextFocus();
                                              },
                                              style: TextStyle(
                                                //   color: Color(0xff053F5C),
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'AleoBold'
                                              ),
                                              keyboardType: TextInputType.visiblePassword,


                                              // maxLength: 10,
                                              decoration:InputDecoration(
                                                label: Text('Confirm Password'),
                                                enabledBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black, width: 1.0),
                                                ),
/*
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff36517e),
                                                  width: 3.0),
                                            ),
*/

                                                /*   suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Theme.of(context).primaryColorDark,
                                    ),
                                    onPressed: () {
                                      // Update the state i.e. toogle the state of passwordVisible variable
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),*/

                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Icon(Icons.lock),
                                                ),
                                                suffixIcon: GestureDetector(
                                                  onTap: (){
                                                    setState(
                                                            (){
                                                          _obscureText1 = !_obscureText1;
                                                        }
                                                    );

                                                  },
                                                  child: Icon(
                                                      _obscureText1 ? Icons.visibility : Icons.visibility_off
                                                  ),
                                                ),

                                              ),

                                              // autovalidateMode: AutovalidateMode.onUserInteraction,
                                              validator: (value){
                                                /* if(value!.isEmpty){
                                                return "* Required";
                                              }
                                              if (value!.length < 8) {
                                                return "password needs to be atleast 8 character";
                                              }
                                              if(passwordctr.text != confirmpasswordctr.text){
                                                return "Password do not match";
                                              }

                                              else{
                                                return null;
                                              }*/
                                                if(passwordctr.text.isEmpty) {
                                                  if (value!.isEmpty) {
                                                    return "* Required";
                                                  }
                                                  if( passwordctr.text.isEmpty){
                                                    return "* Enter the Password";
                                                  }
                                                  if (value.length < 8) {
                                                    return "* Password needs to be atleast 8 character";
                                                  }
                                                  else{
                                                    return null;
                                                  }
                                                }

                                                else {
                                                  if (value!.isEmpty) {
                                                    return "* Re-Enter the Password";
                                                  }
                                                  if (passwordctr.text !=
                                                      confirmpasswordctr.text) {
                                                    return "* Password do not match";
                                                  }

                                                  if (value!.length < 8) {
                                                    return "* Password needs to be atleast 8 character";
                                                  }

                                                  else{
                                                    return null;
                                                  }
                                                }

                                              },

                                            ),
                                          ),
                                          Divider(
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                        ]
                                    )
                                ),




                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 15,top:20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  /* Checkbox(

                                          // checkColor: Color(0xfffdb11b),
                                          checkColor:Color(0xff8bdeea),
                                          activeColor: Color(0xff053F5C) ,
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },
                                        ),*/
                                  RichText(
                                    text: TextSpan(


                                      children: <TextSpan>[
                                        TextSpan(text:"By signing up,you're agree to our ",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          // fontFamily: "unmaskedbbbold",
                                          fontFamily: "AleoBoldItalic",
                                          fontWeight: FontWeight.w800,
                                          //color: Colors.green[700]

                                        )
                                        ),

                                        TextSpan(text:' Terms&Conditions',
                                          style: TextStyle(
                                              fontFamily: "AleoBold",
                                              decoration: TextDecoration.underline,
                                              //   color: Colors.purple[700],
                                              //color: Color(0xff8bdeea),

                                              //color: Color(0xff053F5C),
                                              color:Colors.indigo[900],
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700
                                          ),), TextSpan(text:" and ",style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          // fontFamily: "unmaskedbbbold",
                                          fontFamily: "AleoBoldItalic",
                                          fontWeight: FontWeight.w800,
                                          //color: Colors.green[700]

                                        )
                                        ),

                                        TextSpan(text:'Privacy Policies',
                                          style: TextStyle(
                                              fontFamily: "AleoBold",
                                              decoration: TextDecoration.underline,
                                              //   color: Colors.purple[700],
                                              //color: Color(0xff8bdeea),
                                              color:Colors.indigo[900],

                                              // color: Color(0xff053F5C),
                                              // color:Colors.indigo,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700
                                          ),),
                                      ],
                                    ),
                                  ),
                                  /* Row(
                                          children: [
                                            Text("By signing up,you're agree to our",style: TextStyle(
                                              fontSize: 13,
                                              // fontFamily: "unmaskedbbbold",
                                              fontFamily: "AleoBoldItalic",
                                              fontWeight: FontWeight.w800,
                                              //color: Colors.green[700]

                                            )
                                            ),
                                            TextButton(
                                              // controller: submitctr,
                                              // focusNode: submitfs,
                                              //  style: ElevatedButton.styleFrom(



                                              //  ),
                                              onPressed:() {}, child: Text('Terms&Conditions',
                                              style: TextStyle(
                                                  fontFamily: "AleoBold",
                                                  decoration: TextDecoration.underline,
                                                  //   color: Colors.purple[700],
                                                  //color: Color(0xff8bdeea),

                                                  color: Color(0xff053F5C),
                                                 // color:Colors.indigo,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700
                                              ),),
                                            ),
                                            Text("and",style: TextStyle(
                                              fontSize: 13,
                                              // fontFamily: "unmaskedbbbold",
                                              fontFamily: "AleoBoldItalic",
                                              fontWeight: FontWeight.w800,
                                              //color: Colors.green[700]

                                            )),

                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [

                                            TextButton(
                                              // controller: submitctr,
                                              // focusNode: submitfs,
                                              //  style: ElevatedButton.styleFrom(



                                              //  ),
                                              onPressed:() {}, child: Text('Privacy Policies',
                                              style: TextStyle(
                                                  fontFamily: "AleoBold",
                                                  decoration: TextDecoration.underline,
                                                  //   color: Colors.purple[700],
                                                  //color: Color(0xff8bdeea),

                                                  color: Color(0xff053F5C),
                                                  // color:Colors.indigo,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700
                                              ),),
                                            ),
                                          ],
                                        ),*/
                                ]
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(

                                width:MediaQuery.of(context).size.width/1.5,
                                margin: EdgeInsets.only(top: 15),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    stops: [0.0, 1.0],
                                    colors: [
                                      Color(0xff36517e),
                                      Color(0xff36517e),
                                      /* Colors.indigo,
                                  Colors.indigoAccent*/

                                      // Colors.deepPurple.shade400,
                                    ],
                                  ),
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                padding: EdgeInsets.only(bottom: 0,top:0 ),
                                child: ElevatedButton
                                  (

                                  // controller: submitctr,
                                  focusNode: submitfs,
                                  /* style: ElevatedButton.styleFrom(

                        backgroundColor:Colors.pink[300],
                        foregroundColor: Color(0xffeebd89)
                                ),*/
                                  onPressed:() {
                                    if(_formkey.currentState!.validate()){
                                      print("Successful");
                                    }
                                    else{
                                      print("unSuccessful");
                                    }
                                  },style:  ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                                  // elevation: MaterialStateProperty.all(3),
                                  shadowColor:
                                  MaterialStateProperty.all(Colors.transparent),
                                ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Sign up',

                                        style: TextStyle(


                                          /*  color: Colors.amber[400],
                                       color: Color(0xff5ec5d4),
                                       color: Color(0xff00AEB9),
                                        color: Color(0xff053F5C),
                                           color: Color(0xff053F5C),
*/





                                            fontFamily: "SquaresBold",
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700
                                        ),),
                                      Icon((Icons.arrow_forward_sharp
                                      ),

                                        /* color: Color(0xff00AEB9),
                                    color: Color(0xff053F5C),

                                    color: Color(0xff053F5C),
                                 color: Color(0xff053F5C)
*/
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(margin:EdgeInsets.only(bottom: 40),
                            height: 40,

                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  child: Text("Joined us before? Just ",style: TextStyle(
                                    fontSize: 16,
                                    // fontFamily: "unmaskedbbbold",
                                    fontFamily: "AleoBoldItalic",
                                    fontWeight: FontWeight.w800,
                                    //color: Colors.green[700]

                                  )),
                                  padding: EdgeInsets.only(left: 15),


                                ),
                                Container(

                                  padding: EdgeInsets.only(bottom: 0,top: 0),
                                  child: TextButton
                                    (
                                    // controller: submitctr,
                                    // focusNode: submitfs,
                                    /* style: ElevatedButton.styleFrom(

                                    backgroundColor:Colors.pink[300],
                                    foregroundColor: Color(0xffeebd89)
                                ),*/
                                    onPressed:() {
                                      Navigator.pushReplacementNamed(context, '/login') ;
                                    }, child: Text('Sign in',

                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize:18,
                                        // color: Colors.purple[700],
                                        //  color: Color(0xff8bdeea),

                                        // color: Color(0xff053F5C),
                                        color:Colors.indigo[900],

                                        fontFamily: "AleoBold",

                                        fontWeight: FontWeight.w700
                                    ),),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ]

                    )
                )

            ),
          ),
        )
    );
  }
}