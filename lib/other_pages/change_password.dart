import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class changePass extends StatefulWidget {

  @override
  State<changePass> createState() => _changePassState();
}




class _changePassState extends State<changePass> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
TextEditingController nPassCtr = TextEditingController();
TextEditingController cPassCtr = TextEditingController();
FocusNode npassfs = FocusNode();
FocusNode cpassfs = FocusNode();
bool _obscureText=true;
bool _obscureText1=true;
//
  @override
  Widget build(BuildContext context) {
    final node=FocusScope.of(context);



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

        toolbarOpacity: 1,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/verification');
        },icon: Icon(Icons.arrow_back_ios_sharp),
          color: Colors.black,),
      ),
      body: SafeArea(
        child: Form(
          key:_formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    child: Image.asset("image/reset_pass.png",
                      // height: MediaQuery.of(context).size.width,
                      // width: MediaQuery.of(context).size.width,
                      height: 200,
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35,0,8,0),
                      child: Text("Reset Password",style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,

                      ),),
                    )
                  ],

                ),
             /*   Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35,0,8,0),
                      child: Text("PassWord",style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,

                      ),),
                    )
                  ],

                ),*/
                Row(
                  children: [
                    Expanded(
                      child: Container(

                        padding: const EdgeInsets.fromLTRB(30, 8, 30, 10),
                        child: TextFormField(
                          controller: nPassCtr,
                          focusNode: npassfs,
                          obscureText: _obscureText1,
                          onEditingComplete: (){
                            node.nextFocus();
                          },
                          decoration: InputDecoration(

                            /*border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),*/
                            labelText: 'New Password',
                            suffixIcon: GestureDetector(
                              onTap: (){
                                setState(
                                        (){
                                      _obscureText1 = !_obscureText1;
                                    }
                                );

                              },
                              child: Icon(
                                  _obscureText1 ? Icons.visibility_off : Icons.visibility
                              ),
                            ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Re-enter Password";
                            }
                            if(value.length < 8){
                              return "password needs to be atleast 8 character";
                            }
                            if(nPassCtr.text != cPassCtr.text){
                              return "Password do not match";
                            }
                            else{
                              return null;
                            }

                          },

                        ),

                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(

                        padding: const EdgeInsets.fromLTRB(30, 8, 30, 10),
                        child: TextFormField(
                          controller: cPassCtr,
                          focusNode: cpassfs,
                          obscureText: _obscureText,
                          onEditingComplete: (){
                            node.nextFocus();
                          },
                          decoration: InputDecoration(

                            /*border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),*/
                            labelText: 'Confirm Password',
                           suffixIcon: GestureDetector(
                         onTap: (){
                           setState(
                               (){
                                 _obscureText = !_obscureText;
                               }
                           );

                         },
                             child: Icon(
                               _obscureText ? Icons.visibility_off : Icons.visibility
                             ),
                         ),
                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "Re-enter Password";
                            }
                            if(value.length < 8){
                              return "password needs to be atleast 8 character";
                            }
                            if(nPassCtr.text != cPassCtr.text){
                              return "Password do not match";
                            }
                            else{
                              return null;
                            }

                          },

                        ),

                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(

                      child:Container(
                        height: 60,
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                        child: ElevatedButton(
                          onPressed: (){
                              if(_formkey.currentState!.validate() ){
                                Navigator.pushReplacementNamed(context, '/login');

                              }
                              else{
                              print("unSuccessful");
                              }
                              },


                          child: Text("Submit",style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            primary: Color(0xFF36517e),
                          ),
                        ),
                      ),

                    ),
                  ],

                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
