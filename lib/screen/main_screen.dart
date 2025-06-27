import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인화면')),
      body: Column(
        // 세로로 정렬하는 위젯
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('반갑습니다.'),
          Text('저는 유데미 강의를 듣고있는 학생입니다.'),
          Text('저는 홍길동입니다.'),
          // ctrl + ., mac -> cmd+ .
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // 가로로 위젯을 쌓아서 정렬하는 위젯
            children: [Text('안녕'), Text('반가워'), Text('이것은 가로 방향으로 쌓는 위젯이야')],
          ),
          Row(
            children: [
              Expanded(flex: 2, child: Text('홍길동')),
              Expanded(child: Text('홍길동')),
              Expanded(child: Text('홍길동')),
            ],
          ),
          Container(
            width: 300,
            height: 100,
            margin: EdgeInsets.only(left: 16),
            alignment: Alignment.bottomCenter,
            child: Text('홍드로이드'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
          ),
          Text(
            '홍드로이드2',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Row(
            children: [
              Image.asset('assets/car.png', width: 100, height: 100,),
              Icon(Icons.home_filled, size: 100,)
            ],
          )//image
        ],
      ),
    );
  }
}
