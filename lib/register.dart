import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'Singup.dart';


class register extends StatelessWidget {
  @override
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
                      Text("Login",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w800),),
                      SizedBox(height: 10,),
                  Text("Don't have account please sign up",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w300),),

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
                TextField(
                  keyboardType:TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "E-Mail",
                    prefixIcon:Icon(
                      Icons.email,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  keyboardType:TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: "Password",

                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: (){
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
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>SignUP(),
                        ),
                      );
                    },
                    color: Colors.blue[800],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "SignUP",
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
