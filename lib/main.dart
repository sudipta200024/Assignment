import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
MySnackBar(message,context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message))
  );
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, World!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
            SizedBox(height: 7,),
            Text("Welcome to Flutter!"),
            SizedBox(height: 6,),
            Image.network('https://logowik.com/content/uploads/images/flutter5786.jpg',height: 200,width: 200,fit: BoxFit.fitHeight,),
            SizedBox(height: 6,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text("Press me"),
            )
          ],
        ),
      ),
    );
  }
}