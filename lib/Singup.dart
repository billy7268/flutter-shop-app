import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
class SignUP extends StatelessWidget {
 TextEditingController t1=new TextEditingController();
 TextEditingController t2=new TextEditingController();
 TextEditingController t3=new TextEditingController();
 TextEditingController t4=new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery
                .of(context)
                .size
                .height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blueAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 26,horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("SignUp Page",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800),),
                      SizedBox(height: 10,),
                      Text("FurnitureSouq MobileApplication",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w300),),

                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),

                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: t1,
                          keyboardType:TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Enter your E-Mail",
                            prefixIcon:Icon(
                              Icons.email,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: t2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Enter your Password",

                          ),
                        ),
                        SizedBox(height: 20,),
                    TextFormField(
                          controller: t3,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Enter your PhoneNumber",
                            prefixIcon:Icon(
                              Icons.phone,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                         controller: t4,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Enter your Address",

                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed:  (){
                            Map<String,dynamic> data={"field1":t1.text,"field2":t2.text,"field3":t3.text,"field4":t4.text};
                            FirebaseFirestore.instance.collection("users").add(data);



                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>HomeScreen(),
                                ),
                              );
                            },
                            color: Colors.blue[800],
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
