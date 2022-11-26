
import 'package:flutter/material.dart';

import 'otherpages/routes.dart';
void main() {
  runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => mycolorfull(),
    '/homes': (context)=> mycolorful(),
    '/arguments': (context)=> seconds( "Akash", "dev",90)
  }
  )
  );
}
class mycolorfull extends StatelessWidget {
  static const namelist=[ "Dinesh","ragavan","surya","akash","hari","hassar"];
  int index=2;
  @override
  Widget build(BuildContext context) {
    return
         Scaffold(
          appBar: AppBar(title: Text('app'),
            backgroundColor: Colors.deepPurple[600],
            shadowColor: Colors.cyanAccent,

            actions: [

              Container(
                color: Colors.deepPurple[500],
                child: Row(
                  children: [
                    //Icon(Icons.image),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add_card_outlined)),

                IconButton(onPressed: (){
                }, icon: Icon(Icons.account_circle_sharp)),
                IconButton(onPressed: (){}, icon: Icon(Icons.image))
                  ],
                ),
              ),
            ],

          ),

          body: Container(
            width: 956,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> second("Dinesh", "java")));

                  }, child: Text('next route with call  constructor')),

                  ElevatedButton(onPressed: (){
                    callbackfunction(context);


                  }, child: Text('next route with call back')),

                     ElevatedButton(onPressed: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context)=> second(namelist[index], 'flutter')));
                           if(index<5){
                             index=index+1;
                           }
                           else if(index==5){
                             index=0;
                           }
                                     }, child: Text('using array lists')),
                  ElevatedButton(onPressed: (){

                    Navigator.pushNamed(context, '/arguments' );
                    // Navigator.pushNamed(context, 'second',arguments: second("akas", "Mas", 90));
                  }, child: Text('passing argument')),


                ],
              ),
            ),
          ),


    );
  }
}

void callbackfunction(BuildContext context)async{
  final results =await Navigator.push(context,
      MaterialPageRoute(
          builder: (context)=>second("Manoj", "Designer")));
  final res= await Future.delayed(Duration( seconds: 5),(){
   String r= " ---delayed";
    return r;


  }
  );
  print("call back----"+ results + res);

}
// class secondArg        {                                      //modal class
//   String ArgName,ArgId;
//   int Value;
//   secondArg( this.ArgId,this.ArgName,this.Value);
// }
class second extends StatelessWidget {
  String Sname,Sid;
  second( this.Sname,this.Sid);
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
          Text('Name is :'+ Sname,style: TextStyle(
            fontSize: 34
          ),
          ),


          Text('Id is : '+  Sid,style: TextStyle(
              fontSize: 34
          ),),
          // Text(('VAlue is : '+  arg.Value.toString())),
          Text('This is second route page',style: TextStyle(
    fontSize: 34
    ),),
    ElevatedButton(onPressed: (){
      Navigator.pop(context,"surya Return");

    }, child: Text(' go back to the first route')    ,
    ),
    ]
    ),
    );
  }





  }






















// Row(
//
// children: [
// Flexible(
// flex: 3,
// fit: FlexFit.tight,
// child: Text(
// "First Text",
// style: TextStyle(fontSize: 20.0,color: Colors.yellowAccent),
// ),
// ),
// Flexible(
// flex: 3,
//
// fit: FlexFit.tight,
// child: Text(
// "First Text",
// style: TextStyle(fontSize: 20.0,color: Colors.red),
// ),
// ),
// Expanded(
// flex: 3,
// // fit: FlexFit.tight,
// child: Text(
// "First Text",
// style: TextStyle(fontSize: 20.0,color: Colors.orangeAccent),
// ),
// ),
// Flexible(
// flex: 3,
// fit: FlexFit.tight,
// child: Text(
// "First Text",
// style: TextStyle(fontSize: 20.0,color: Colors.grey),
// ),
// ),
//
// ],
// ),










// GestureDetector(
//   onTap: (){
//      // Navigator.pushNamed(context, '/second',arguments: secondArg("developer", 'Akash',90));
//
//      // Navigator.push(context,
//      //      MaterialPageRoute(builder: (context)=>secondArg(ArgId, ArgName, Value)));
//   },child: Container(
//   width: 150,
//   margin: EdgeInsets.all(20.0),
//   padding: EdgeInsets.all(10.0),
//   decoration: BoxDecoration(
//       color: Colors.grey,
//       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0),bottomRight: Radius.circular(40.0),topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
//       boxShadow: [
//         BoxShadow(
//             color: Colors.orangeAccent,
//             spreadRadius: 5.0,
//             blurRadius: 10.0,
//             offset: Offset(1.0,2.0)
//
//         )
//       ]),
//   child: Center(
//     child: Text('to second route',style: TextStyle(
//         color: Colors.white70
//     ),),
//   ),
// ),
//
// ),