import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputFormPage(),
    );
  }
}

class InputFormPage extends StatefulWidget {
  @override
  State<InputFormPage> createState() => _InputFormPageState();
}

class _InputFormPageState extends State<InputFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('명함 정보 입력'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('명함에 들어갈 정보를 입력하세요',
              style: TextStyle(
              fontSize: 20
            ),),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '이름',
                  prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '직업',
                  prefixIcon: Icon(Icons.work),
                  enabledBorder: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '이메일',
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: '전화번호',
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, child: Text('명함 만들기'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}