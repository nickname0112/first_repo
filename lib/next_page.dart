import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{

  // 값을 저장할 변수 선언
  final String title;
  final String name;
  final int age;

  // 이니셜라이저
  NextPage({
    required this.title,
    required this.name,
    required this.age
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
      title: Text(title),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('이름은 $name 입니다'),
            Text('내년에는 ${age+1} 입니다')
          ],
        )
      ),
    );
  }
}