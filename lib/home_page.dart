import 'package:flutter/material.dart';
import 'package:flutter_image_example/new_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
        
            Image.asset("assets/images/logo.png",width: 200,height: 200,),
            Text("This is flutter logo"),
            Text("Flutter"),
        
            Image.network("https://upload.wikimedia.org/wikipedia/commons/2/2d/Mohamed_Muizzu_meets_Muhammad_Yunus_at_the_UNGA79_%28cropped%29.jpg",  width: 200,height:200,),  //Image.network

            Padding(
              padding: const EdgeInsets.all(20),
              child: Text("Dr Mohammad Younus", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),), //Textstyle, Text
            ),

            ElevatedButton(
                onPressed: (){
                  //for going one page to another page
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));
                  Fluttertoast.showToast(msg: "why click me ??");
                },
                child: Text("Click Me")),
            
          ],
        ),
      ),
    );
  }
}
