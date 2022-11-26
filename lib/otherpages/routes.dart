
// import 'dart:js';

import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     initialRoute: "/home",
//     routes: {
//       '/homes': (context)=> mycolorful(),
//
//       '/arguments': (context)=> seconds( "Akash", "dev",90)
//     },
    // onGenerateRoute: (setting){
    //   if (setting.name=='/arguments'){
    //     // final arg=setting.arguments as second;
    //      return MaterialPageRoute(builder: (context){
    //
    //        return second("ragavan", "Salem", 00);
    //      });
    //   }
    // },


    // onGenerateRoute: (setting){
    //   if(setting.name=='/second'){
    //     final arg=setting.arguments as second;
    //     return MaterialPageRoute(builder: (context)
    //     {
    //       return second(arg.Sname,arg.Sid,arg.Val);
    //     }
    //     );
    //
    //   }
    // },
//   )
//   );
// }
class mycolorful extends StatelessWidget {
  const mycolorful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // ElevatedButton(onPressed: (){
            //
            //   Navigator.pushNamed(context, '/second',arguments: second("AKASH", 'dev',90));
            // }, child: Text('passing argument by ongeneratorroutes')),
            // ElevatedButton(onPressed: (){
            //
            //   Navigator.pushNamed(context, 'second',arguments: second("akas", "Mas", 90));
            // }, child: Text('passing argument by ongeneratorroutes')),
            ElevatedButton(onPressed: (){

                  Navigator.pushNamed(context, '/arguments' );
              // Navigator.pushNamed(context, 'second',arguments: second("akas", "Mas", 90));
            }, child: Text('passing argument')),

          ],

        ),
      ),
    );
  }
}



class secondArg        {                                      //modal class
  String ArgName,ArgId;
  int Value;
  secondArg( this.ArgId,this.ArgName,this.Value);
}

class seconds extends StatelessWidget {
  String Sname,Sid;
 int Val;


   seconds( this.Sname,this.Sid,this.Val);


  @override
  Widget build(BuildContext context) {
     // final arg= ModalRoute.of(context)!.settings.arguments as secondArg;
    // arg.ArgName;
    // arg.ArgId;
    // arg.Value;
    return Scaffold(
      appBar: AppBar(
        title: Text('second'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // Text(('Role is :'+ arg.ArgName),style: TextStyle(
          //     fontSize: 34
          // ),), Text(('Role is :'+ arg.ArgId),style: TextStyle(
          //       fontSize: 34
          //   ),), Text(('Role is :'+ arg.Value.toString()),style: TextStyle(
          //       fontSize: 34
          //   ),),
            Text(('Role is :'+ Sid),style: TextStyle(
                fontSize: 34
            ),),
            //Text(('Role is :'+ arg.ArgId)),
         Text   (('Name is :'+ Sname),style: TextStyle(
             fontSize: 34
         ),),
             Text(("value is : "+ Val.toString()),style: TextStyle(
                 fontSize: 34
             ),),
            // Text(('VAlue is : '+  arg.Value.toString())),
            ElevatedButton(onPressed: (){
              Navigator.pop(context,"Using call back function");
            }, child: Text(' go back to the first route')
            ),
          ]
      ),
    );
  }
}

