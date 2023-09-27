import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DevicePreview(builder: (BuildContext context)=>
      MaterialApp(useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,
        home: Newlogin(),
      )
  )
  );
}


class Newlogin extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>loginstate();

}
class loginstate extends State<Newlogin>{
  bool showpas=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: const Text("Login page"),backgroundColor: Colors.lightBlue[900],
      //),
        body: SingleChildScrollView(
            child: Center(
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(height: 180,),
                    const Image(image: AssetImage("assets/fb.png"),height: 100,width: 100,),
                    SizedBox(height: 50,),
                    Padding(padding: const EdgeInsets.only(left: 40,right: 40,),
                      child: TextField(
                        decoration: InputDecoration(

                            prefixIcon: const Icon(Icons.person),
                            hintText: "Mobile number or email address",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 40,right: 40,top: 20),
                      child: TextField(
                        obscureText: showpas,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            suffixIcon: IconButton(onPressed: (){
                              setState(() {
                                if(showpas){
                                  showpas=false;
                                }else{
                                  showpas=true;
                                }
                              });
                            },icon: Icon(showpas==true ? Icons.visibility_off : Icons.visibility),),
                            hintText: "Password",
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child: Text("Log in"),style: ElevatedButton.styleFrom(fixedSize: const Size(290, 30),backgroundColor: Colors.blue[900]),
                    ),
                    SizedBox(height: 30,),
                    TextButton(onPressed: (){}, child: Text("Forgotten Password?",style: TextStyle(color: Colors.black),)),
                    SizedBox(height: 150,),
                    ElevatedButton(onPressed: (){}, child: Text("Create new account"),style: ElevatedButton.styleFrom(fixedSize: const Size(290, 30), //fixed size box nde leghn cheyyan
                        backgroundColor: Colors.transparent,foregroundColor: Colors.blue.shade900,elevation: 0,
                        side: const BorderSide(width: 1.0,color: Colors.blue)),),
                    //SizedBox(height: 10,),
                    Image(image: AssetImage("assets/meta.png"),height: 50,width: 30,)
                  ],
                ),
              ),
            ),

        ),

        );
    }

}