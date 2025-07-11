import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("Bilder-Matching-Spiel"),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 27,),
        backgroundColor: const Color.fromARGB(255, 37, 57, 149),
      ),
      body: ImagePage() ,

    ),
  ));
}

class ImagePage extends StatefulWidget {
  

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
int leftImageNumber = 1;
int rightImageNumber = 2;

  @override
  Widget build(BuildContext context) {
    
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber?
           "Congratulation!"
          :"Versuch noch einmal!",
        style: TextStyle(fontSize: 32.0, color: Colors.white, 
        ),
        ),
        Row(
          children: [
             Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {leftImageNumber = Random().nextInt(8)+1;
                  rightImageNumber = Random().nextInt(8)+1; 
                  print(leftImageNumber);
                  });
                  },
                
              child: Image.asset("images/sura$leftImageNumber.png"),
              
              ),
                ),           
            
             Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                 rightImageNumber = Random().nextInt(8)+1;
                 leftImageNumber = Random().nextInt(8)+1;   
                  });
                },
                
              child: Image.asset("images/sura$rightImageNumber.png"),
              
              ),
                ),            
            
          ],
        ),
      ],
    );
  }
}
