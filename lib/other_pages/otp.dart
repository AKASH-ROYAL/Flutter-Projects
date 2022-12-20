import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


void main(){
  runApp(otpPage());
}
class otpPage extends StatefulWidget {
  const otpPage({Key? key}) : super(key: key);

  @override
  State<otpPage> createState() => _otpPageState();
}

/*TextEditingController TxtOneCtr = TextEditingController();
TextEditingController TxtTwoCtr = TextEditingController();
TextEditingController TxtThreeCtr = TextEditingController();
TextEditingController TxtFourCtr = TextEditingController();*/
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
var otpController = List.generate(4, (index) => TextEditingController());
FocusNode verifyfs = FocusNode();

var isOtpSent = false;
/*FocusNode TxtOneFs = FocusNode();
FocusNode TxtTwoFs = FocusNode();
FocusNode TxtThreeFs = FocusNode();
FocusNode TxtFourFs = FocusNode();*/
class _otpPageState extends State<otpPage> {
  @override
  Widget build(BuildContext context) {
    final node=FocusScope.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        },icon: Icon(Icons.arrow_back_ios_sharp),
        color: Colors.black,),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
            children: [
              Container(
                child: Image.asset("image/Otp_image.png",
                  // height: MediaQuery.of(context).size.width,
                  // width: MediaQuery.of(context).size.width,
                  height: 200,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35,30,8,8),
                    child: Text("Enter OTP",style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,

                    ),),
                  )
                ],

              ),

              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => SizedBox(
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(right:10),

                      child: TextFormField(
                        maxLength: 1,
                        controller: otpController[index],
                        onEditingComplete:(){
                          node.nextFocus();
                        },
                          validator: MultiValidator(
                            [
                              RequiredValidator(errorText: ""),

                            ]
                          ),
                        onChanged: (value){
                          if(value.length==1 && index <= 3){
                            FocusScope.of(context).nextFocus();
                          }else if(value.isEmpty && index >0 ){
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        decoration: InputDecoration(
                          counterText: '',
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
                ),
              ),

              Row(
                children: [
                  Expanded(

                    child:Container(
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: ElevatedButton(
                        focusNode: verifyfs,
                        onPressed: (){
                          if(_formkey.currentState!.validate()){
                            Navigator.pushNamed(context, "/change_pass_page");

                          }
                          else{
                            print("unSuccessful");
                          }

                        },
                        child: Text("Verify",style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    TextButton(
                      onPressed: () {
                        print("pressed");
                      },
                      child: Text(
                        'Resend OTP',
                        style: TextStyle(color: Colors.black),

                      ),
                    ),


                  ],

                ),
              ),

            ],
      ),
          ),
        ),

      ),

    );

  }
}
